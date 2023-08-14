import 'package:drift/drift.dart' show Value;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:skakel_mobile/db/base/base_model.dart';
import 'package:skakel_mobile/db/base/sync_status.dart';
import 'package:skakel_mobile/db/db.dart';
import 'package:skakel_mobile/utils/freezed.dart';
import 'package:skakel_mobile/utils/mixins/model_to_companion.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@appFreezed
class User
    with _$User, ModelToCompanion<UserEntityCompanion>
    implements BaseModel {
  const User._();

  @Implements<SyncableModel>()
  const factory User({
    required String id,
    required int version,
    required DateTime createdAt,
    required DateTime updatedAt,
    required SyncStatus syncStatus,
    required String username,
    required String? phoneNumber,
    required String? profilePicture,
  }) = _User;

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
}
