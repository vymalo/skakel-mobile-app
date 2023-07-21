import 'package:drift/drift.dart';
import 'package:skakel_mobile/db/base/base_model.dart';
import 'package:skakel_mobile/db/base/sync_status.dart';
import 'package:skakel_mobile/db/db.dart';
import 'package:skakel_mobile/utils/mixins/model_to_companion.dart';

class User with ModelToCompanion<UserEntityCompanion> implements BaseModel {

  @override
  int id;

  @override
  DateTime createdAt;

  @override
  DateTime updatedAt;

  @override
  int version;

  @override
  SyncStatus syncStatus;

  String username;
  String? phoneNumber;
  String? profilePicture;

  User({
    required this.id,
    required this.version,
    required this.createdAt,
    required this.updatedAt,
    required this.syncStatus,
    required this.username,
    this.phoneNumber,
    this.profilePicture,
  });

  @override
  UserEntityCompanion toCompanion() {
    return UserEntityCompanion(
      id: Value(id),
      version: Value(version),
      createdAt: Value(createdAt),
      updatedAt: Value(updatedAt),
      syncStatus: Value(syncStatus),
      username: Value(username),
      phoneNumber: Value(phoneNumber),
      profilePicture: Value(profilePicture),
    );
  }
}
