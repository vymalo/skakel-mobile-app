import 'package:drift/drift.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:skakel_mobile/db/base/base_model.dart';
import 'package:skakel_mobile/db/base/sync_status.dart';
import 'package:skakel_mobile/db/db.dart';
import 'package:skakel_mobile/utils/mixins/model_to_companion.dart';

part 'user.g.dart';

@JsonSerializable()
class User with ModelToCompanion<UserEntityCompanion> implements SyncableModel {

  @override
  String id;

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


  // Add this factory method to create an instance from JSON data
  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  // Add this method to convert the instance to JSON data
  Map<String, dynamic> toJson() => _$UserToJson(this);
}
