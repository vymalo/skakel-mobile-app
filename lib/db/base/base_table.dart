import 'package:drift/drift.dart';
import 'package:skakel_mobile/db/base/sync_status.dart';

mixin BaseEntity on Table {
  IntColumn get id => integer().autoIncrement()();

  DateTimeColumn get createdAt => dateTime()();

  DateTimeColumn get updatedAt => dateTime()();

  IntColumn get version => integer()();

  TextColumn get syncStatus => textEnum<SyncStatus>()();
}
