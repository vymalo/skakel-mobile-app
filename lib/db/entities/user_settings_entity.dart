import 'package:drift/drift.dart';
import 'package:skakel_mobile/db/base/base_table.dart';
import 'package:skakel_mobile/db/entities/user_entity.dart';

@DataClassName('user_settings')
class UserSettingsEntity extends Table with BaseEntity {
  TextColumn get userId => text().references(UserEntity, #id)();

  TextColumn get language => text().nullable()();

  TextColumn get theme => text().nullable()();

  BoolColumn get notifications => boolean().nullable()();
}
