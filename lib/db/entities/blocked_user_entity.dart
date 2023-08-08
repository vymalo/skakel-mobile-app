import 'package:drift/drift.dart';
import 'package:skakel_mobile/db/base/base_table.dart';
import 'package:skakel_mobile/db/entities/user_entity.dart';
import 'package:skakel_mobile/db/entities/user_settings_entity.dart';

@DataClassName('blocked_users')
class BlockedUserEntity extends Table with BaseEntity {
  TextColumn get blockedUserId => text().references(UserEntity, #id)();

  TextColumn get userSettingId => text().references(UserSettingsEntity, #id)();
}
