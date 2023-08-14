import 'package:drift/drift.dart';
import 'package:skakel_mobile/db/base/base_table.dart';

@DataClassName('users')
class UserEntity extends Table with BaseEntity {
  TextColumn get username => text()();

  TextColumn get phoneNumber => text().nullable().named('phone_number')();

  TextColumn get profilePicture => text().nullable().named('profile_picture')();
}
