import 'package:skakel_mobile/db/base/sync_status.dart';

abstract class BaseModel {
  String get id;

  DateTime get createdAt;

  DateTime get updatedAt;

  int get version;
}

abstract class SyncableModel extends BaseModel {
  SyncStatus get syncStatus;

  set syncStatus(SyncStatus newValue);
}
