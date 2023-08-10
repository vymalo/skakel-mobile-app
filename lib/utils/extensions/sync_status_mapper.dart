import 'package:skakel_api/skakel_api.dart' as api;
import 'package:skakel_mobile/db/base/sync_status.dart';

/// This extension is used to convert a SyncStatus to an api SyncStatus.
extension SyncStatusToApi on SyncStatus {
  api.SyncStatus toApi() {
    switch (this) {
      case SyncStatus.updated:
        return api.SyncStatus.updated;
      case SyncStatus.deleted:
        return api.SyncStatus.deleted;
      case SyncStatus.synced:
        return api.SyncStatus.synced;
      default:
        throw Exception('SyncStatusMapper.toApi: unknown sync status');
    }
  }
}

/// This extension is used to convert an api SyncStatus to a SyncStatus.
extension ApiToSyncStatus on api.SyncStatus {
  SyncStatus toModel() {
    switch (this) {
      case api.SyncStatus.updated:
        return SyncStatus.updated;
      case api.SyncStatus.deleted:
        return SyncStatus.deleted;
      case api.SyncStatus.synced:
        return SyncStatus.synced;
      default:
        throw Exception('SyncStatusMapper.toApi: unknown sync status');
    }
  }
}
