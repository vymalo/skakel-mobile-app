import 'package:skakel_api/skakel_api.dart' as api;
import 'package:skakel_mobile/db/db.dart';
import 'package:skakel_mobile/db/models/user.dart';
import 'package:skakel_mobile/utils/extensions/sync_status_mapper.dart';

extension ModelsToApiUsers on List<User> {
  List<api.User> toApi() {
    return map((cm) => cm.toApi()).toList();
  }
}

extension ModelToApiUser on User {
  api.User toApi() {
    final apiUser = api.UserBuilder()
      ..id = id
      ..version = version
      ..createdAt = createdAt
      ..updatedAt = updatedAt
      ..syncStatus = syncStatus.toApi()
      ..username = username
      ..phoneNumber = phoneNumber
      ..profilePicture = profilePicture;

    return apiUser.build();
  }
}

extension ApiUserToModel on api.User {
  User toModel() {
    return User(
      id: id!,
      createdAt: createdAt!,
      updatedAt: updatedAt!,
      syncStatus: syncStatus!.toModel(),
      version: version!,
      username: username,
      phoneNumber: phoneNumber,
      profilePicture: profilePicture,
    );
  }
}

extension ApiUsersToModel on Iterable<api.User> {
  List<User> toModel() {
    return map((cm) => cm.toModel()).toList();
  }
}

extension UsersToModel on Iterable<users> {
  List<User> toModel() {
    return map((cm) => cm.toModel()).toList();
  }
}

extension UsersStreamToModel on Stream<List<users>> {
  Stream<List<User>> toModel() {
    return map((cm) => cm.toModel());
  }
}

extension UserStreamToModel on Stream<users> {
  Stream<User> toModel() {
    return map((cm) => cm.toModel());
  }
}

extension UserToModel on users {
  User toModel() {
    return User(
      id: id,
      createdAt: createdAt,
      updatedAt: updatedAt,
      syncStatus: syncStatus,
      version: version,
      username: username,
      phoneNumber: phoneNumber,
      profilePicture: profilePicture,
    );
  }
}
