import 'package:skakel_api/skakel_api.dart' as api;
import 'package:skakel_mobile/models/blocked_user.dart';
import 'package:skakel_mobile/utils/extensions/sync_status_mapper.dart';

/// This extension is used to convert a list of models to a list of api objects.
extension ModelToApiBlockedUser on BlockedUser {
  api.BlockedUser toApi() {
    final apiBlockedUser = api.BlockedUserBuilder()
      ..id = id
      ..version = version
      ..createdAt = createdAt
      ..updatedAt = updatedAt
      ..syncStatus = syncStatus.toApi()
      ..blockedUserId = blockedUserId
      ..userSettingId = userSettingId;

    return apiBlockedUser.build();
  }
}

/// This extension is used to convert a list of api models to a list of models.
extension ApiBlockedUsersToModel on Iterable<api.BlockedUser> {
  List<BlockedUser> toModel() {
    return map((e) => e.toModel()).toList();
  }
}

extension ApiBlockedUserToModel on api.BlockedUser {
  BlockedUser toModel() {
    return BlockedUser(
      id: id!,
      createdAt: createdAt!,
      updatedAt: updatedAt!,
      syncStatus: syncStatus!.toModel(),
      version: version!,
      blockedUserId: blockedUserId,
      userSettingId: userSettingId,
    );
  }
}
