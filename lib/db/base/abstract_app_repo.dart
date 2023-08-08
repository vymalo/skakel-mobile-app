import 'dart:async';

import 'package:rxdart/rxdart.dart';
import 'package:skakel_mobile/db/base/base_model.dart';
import 'package:skakel_mobile/db/base/base_repo.dart';
import 'package:skakel_mobile/db/base/sync_status.dart';
import 'package:skakel_mobile/services/connection_status.dart';
import 'package:skakel_mobile/utils/logging.dart';

/// Base class for all repositories that need to sync data with a remote server.
abstract class AbstractAppRepo<T extends BaseModel>
    implements BaseRepo<T>, SyncableRepo<T> {
  final BaseRepo<T> _localRepo;
  final BaseRepo<T> _remoteRepo;
  final ConnectionStatus _connectionStatus;

  AbstractAppRepo(
    this._localRepo,
    this._remoteRepo,
    this._connectionStatus,
  );

  @override
  Future<T?> fetchById(String id) => _localRepo.fetchById(id);

  @override
  Stream<List<T>> streamAll({Map<String, dynamic>? query}) {
    log.d('StreamAll $T[]');
    return _connectionStatus.stream.flatMap(
      (online) {
        log.d('StreamAll $T[] online: $online');
        // If we're offline, just stream the local data.
        final remoteStream =
            _remoteRepo.streamAll(query: query).asyncMap((remotes) async {
          await Future.wait(
            remotes.map((remote) => _localRepo.save(remote)),
          );

          return remotes;
        });

        return Rx.combineLatest2(
          _localRepo.streamAll(query: query),
          remoteStream,
          (locals, remotes) => locals,
        );
      },
    );
  }

  @override
  Future<T> save(T model, {bool skipNetwork = false}) async {
    if (model.syncStatus == SyncStatus.deleted) {
      model.syncStatus = SyncStatus.updated;
    }

    var saved = await _localRepo.save(model);

    if (_connectionStatus.online && !skipNetwork) {
      try {
        saved.syncStatus = SyncStatus.synced;
        final remoteSaved = await _remoteRepo.save(saved);

        // Only mark it as synced if remote saving also succeeds.
        saved = await _localRepo.save(remoteSaved);
      } catch (e, s) {
        log.e('Cannot sync $T', e, s);

        // Revert the sync status to created, so you can try syncing later.
        saved.syncStatus = SyncStatus.updated;
        saved = await _localRepo.save(saved);
      }
    }

    return saved;
  }

  @override
  Future<void> delete(T entity) async {
    // Set the entity's sync status to deleted and save it locally
    entity.syncStatus = SyncStatus.deleted;
    await _localRepo.save(entity);

    // If the device is online, attempt to delete the entity remotely
    if (_connectionStatus.online) {
      try {
        await _remoteRepo.delete(entity);

        // If the remote delete succeeds, delete the entity locally as well
        await _localRepo.delete(entity);
      } catch (e, s) {
        log.e('Cannot delete $T', e, s);
      }
    }
    // If the device is offline, the entity will remain marked as deleted locally until you synchronize with the server later
  }

  @override
  Stream<T> getById(String id) => Rx.combineLatest3(
        _localRepo.getById(id),
        _remoteRepo.getById(id),
        _connectionStatus.stream,
        (local, remote, online) {
          // If the device is online and the remote version is newer than the local version, save the remote version locally
          if (online && remote.version > local.version) {
            _localRepo.save(remote);
          }

          return local;
        },
      );

  @override
  Future<void> sync() async {
    try {
      await _syncFromRemoteToLocal();
    } catch (e, s) {
      log.e('Error syncing from remote to local', e, s);
    }

    try {
      await _syncFromLocalToRemote();
    } catch (e, s) {
      log.e('Error syncing from local to remote', e, s);
    }
  }

  /// Syncs from remote to local
  Future<void> _syncFromRemoteToLocal() async {
    // Fetch all remote items
    var remoteItems = await _remoteRepo.streamAll().first;

    for (var remoteItem in remoteItems) {
      // Fetch the local item
      var localItem = await _localRepo.fetchById(remoteItem.id);

      if (localItem == null ||
          remoteItem.updatedAt.isAfter(localItem.updatedAt) ||
          (remoteItem.updatedAt == localItem.updatedAt &&
              remoteItem.version > localItem.version)) {
        try {
          await _localRepo.save(remoteItem);
        } catch (e, s) {
          log.e('Error saving to local repo', e, s);
        }
      } else {
        try {
          await _remoteRepo.save(localItem);
        } catch (e, s) {
          log.e('Error saving to remote repo', e, s);
        }
      }
    }
  }

  /// Syncs from local to remote
  Future<void> _syncFromLocalToRemote() async {
    // Fetch all local items
    var localItems = await _localRepo.streamAll().first;
    var itemsToSync =
        localItems.where((item) => item.syncStatus != SyncStatus.synced);

    for (var localItem in itemsToSync) {
      var remoteItem = await _remoteRepo.fetchById(localItem.id);

      if (remoteItem == null ||
          localItem.updatedAt.isAfter(remoteItem.updatedAt) ||
          (localItem.updatedAt == remoteItem.updatedAt &&
              localItem.version > remoteItem.version)) {
        try {
          var savedItem = await _remoteRepo.save(localItem);

          // Update sync status locally if remote saving is successful
          savedItem.syncStatus = SyncStatus.synced;
          await _localRepo.save(savedItem);
        } catch (e, s) {
          log.e('Error saving to remote repo', e, s);
        }
      } else {
        try {
          await _localRepo.save(remoteItem);
        } catch (e, s) {
          log.e('Error saving to local repo', e, s);
        }
      }
    }
  }
}
