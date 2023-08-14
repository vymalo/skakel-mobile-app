import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:logging/logging.dart';
import 'package:skakel_mobile/db/base/base_repo.dart';
import 'package:skakel_mobile/db/repositories/shared.dart';
import 'package:skakel_mobile/services/connection_status.dart';
import 'package:skakel_mobile/utils/logging.dart';

final log = Logger('SyncManager');

/// Manages the synchronization of all repositories.
class SyncManager {
  final List<SyncableRepo> repos;
  final ConnectionStatus connectivity;

  SyncManager({
    required this.repos,
    required this.connectivity,
  });

  /// Initializes the sync manager.
  void init() async {
    // Subscribe to connectivity changes
    connectivity.stream.listen((online) {
      if (online) {
        // Sync all repositories when connection is re-established
        syncAll();
      }
    });
  }

  /// Syncs all repositories.
  Future<void> syncAll() async {
    final all = repos.map((repo) async {
      try {
        await repo.sync();
      } catch (e, s) {
        log.e('Error syncing repository: ${repo.runtimeType}', e, s);
      }
    });

    await Future.wait(all);
  }
}

final syncManagerProvider = Provider<SyncManager>((ref) {
  log.d('Initializing SyncManager...');
  final repos = ref.watch(allRepoProvider);
  final connectivity = ref.watch(connectivityProvider);
  return SyncManager(repos: repos, connectivity: connectivity);
});
