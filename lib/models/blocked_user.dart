import 'package:drift/drift.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:skakel_mobile/db/base/base_model.dart';
import 'package:skakel_mobile/db/base/sync_status.dart';
import 'package:skakel_mobile/db/db.dart';
import 'package:skakel_mobile/utils/mixins/model_to_companion.dart';

part 'blocked_user.g.dart';

@JsonSerializable()
class BlockedUser
    with ModelToCompanion<BlockedUserEntityCompanion>
    implements SyncableModel {
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

  String blockedUserId;
  String userSettingId;

  BlockedUser({
    required this.id,
    required this.version,
    required this.createdAt,
    required this.updatedAt,
    required this.syncStatus,
    required this.blockedUserId,
    required this.userSettingId,
  });

  @override
  BlockedUserEntityCompanion toCompanion() {
    return BlockedUserEntityCompanion(
      id: Value(id),
      version: Value(version),
      createdAt: Value(createdAt),
      updatedAt: Value(updatedAt),
      syncStatus: Value(syncStatus),
      blockedUserId: Value(blockedUserId),
      userSettingId: Value(userSettingId),
    );
  }

  // Add this factory method to create an instance from JSON data
  factory BlockedUser.fromJson(Map<String, dynamic> json) =>
      _$BlockedUserFromJson(json);

  // Add this method to convert the instance to JSON data
  Map<String, dynamic> toJson() => _$BlockedUserToJson(this);
}
