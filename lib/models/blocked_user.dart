import 'package:drift/drift.dart' show Value;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:skakel_mobile/db/base/base_model.dart';
import 'package:skakel_mobile/db/base/sync_status.dart';
import 'package:skakel_mobile/db/db.dart';
import 'package:skakel_mobile/utils/freezed.dart';
import 'package:skakel_mobile/utils/mixins/model_to_companion.dart';

part 'blocked_user.freezed.dart';
part 'blocked_user.g.dart';

@appFreezed
class BlockedUser
    with _$BlockedUser, ModelToCompanion<BlockedUserEntityCompanion>
    implements BaseModel {
  const BlockedUser._();

  @Implements<SyncableModel>()
  const factory BlockedUser({
    required String id,
    required int version,
    required DateTime createdAt,
    required DateTime updatedAt,
    required SyncStatus syncStatus,
    required String blockedUserId,
    required String userSettingId,
  }) = _BlockedUser;

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
}
