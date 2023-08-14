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
    log.d('[$T] Streaming All...');
    return _connectionStatus.stream.flatMap(
      (online) {
        log.d('[$T] StreamAll online: $online');
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
    if (model is! SyncableModel) {
      return _localRepo.save(model);
    }

    if (model.syncStatus == SyncStatus.deleted) {
      model = model.copyWith(syncStatus: SyncStatus.updated) as T;
    }

    var saved = await _localRepo.save(model);
    if (saved is! SyncableModel) {
      return saved;
    }

    if (_connectionStatus.online && !skipNetwork) {
      try {
        saved = saved.copyWith(syncStatus: SyncStatus.updated) as T;
        final remoteSaved = await _remoteRepo.save(saved);

        // Only mark it as synced if remote saving also succeeds.
        saved = await _localRepo.save(remoteSaved);
      } catch (e, s) {
        log.e('[$T] Cannot sync $T', e, s);
      }
    }

    return saved;
  }

  @override
  Future<void> delete(T entity) async {
    if (entity is! SyncableModel) {
      return _localRepo.delete(entity);
    }

    // Set the entity's sync status to deleted and save it locally
    entity = entity.copyWith(syncStatus: SyncStatus.deleted) as T;
    await _localRepo.save(entity);

    // If the device is online, attempt to delete the entity remotely
    if (_connectionStatus.online) {
      try {
        await _remoteRepo.delete(entity);

        // If the remote delete succeeds, delete the entity locally as well
        await _localRepo.delete(entity);
      } catch (e, s) {
        log.e('[$T] Cannot delete $T', e, s);
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
    log.d('[$T] Syncing...');

    try {
      await _syncFromRemoteToLocal();
      log.d('[$T] Synced from [remote => local]');
    } catch (e, s) {
      log.e('[$T] Error syncing from remote to local', e, s);
    }

    try {
      log.d('[$T] Syncing from [local => remote]');
      await _syncFromLocalToRemote();
      log.d('[$T] Synced from [local => remote]');
    } catch (e, s) {
      log.e('[$T] Error syncing from local to remote', e, s);
    }

    log.d('Synced $T');
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
          log.e('[$T] Error saving to local repo', e, s);
        }
      } else {
        try {
          await _remoteRepo.save(localItem);
        } catch (e, s) {
          log.e('[$T] Error saving to remote repo', e, s);
        }
      }
    }
  }

  /// Syncs from local to remote
  Future<void> _syncFromLocalToRemote() async {
    log.d('[$T] Syncing from local to remote...');

    // Fetch all local items
    final localItems = await _localRepo
        .streamAll()
        .asyncMap((event) async => event
            .whereType<SyncableModel>()
            .where((item) => item.syncStatus != SyncStatus.synced))
        .first;

    log.d('[$T] Loaded data to sync: ${localItems.length}');

    for (final localItem in localItems) {
      var remoteItem = await _remoteRepo.fetchById(localItem.id);

      if (remoteItem == null ||
          localItem.updatedAt.isAfter(remoteItem.updatedAt) ||
          (localItem.updatedAt == remoteItem.updatedAt &&
              localItem.version > remoteItem.version)) {
        try {
          var savedItem = await _remoteRepo.save(localItem as T);

          if (savedItem is! SyncableModel) {
            continue;
          }
          // Update sync status locally if remote saving is successful
          savedItem = savedItem.copyWith(syncStatus: SyncStatus.synced) as T;
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
