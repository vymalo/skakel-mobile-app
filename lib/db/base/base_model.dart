import 'package:drift/drift.dart';
import 'package:skakel_mobile/db/base/sync_status.dart';

abstract class BaseModel<T extends UpdateCompanion> {
  int get id;

  DateTime get createdAt;

  DateTime get updatedAt;

  int get version;

  SyncStatus get syncStatus;

  set syncStatus(SyncStatus newValue);
}
