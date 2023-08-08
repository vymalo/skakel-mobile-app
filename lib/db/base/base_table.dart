import 'package:drift/drift.dart';
import 'package:skakel_mobile/db/base/sync_status.dart';
import 'package:skakel_mobile/utils/id.dart';

mixin BaseEntity on Table {
  TextColumn get id =>
      text().unique().clientDefault(() => generator.getId())();

  DateTimeColumn get createdAt => dateTime()();

  DateTimeColumn get updatedAt => dateTime()();

  IntColumn get version => integer()();

  TextColumn get syncStatus => textEnum<SyncStatus>()();
}
