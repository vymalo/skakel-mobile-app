import 'package:skakel_api/skakel_api.dart' as api;
import 'package:skakel_mobile/db/db.dart';
import 'package:skakel_mobile/models/user.dart';
import 'package:skakel_mobile/utils/extensions/sync_status_mapper.dart';

/// This extension is used to convert a list of models to a list of companion objects.
extension ModelsToApiUsers on List<User> {
  List<api.User> toApi() {
    return map((cm) => cm.toApi()).toList();
  }
}

/// This extension is used to convert a model to a Api User
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

/// This extension is used to convert an Api User to a model
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

/// This extension is used to convert a list of Api Users to a list of models
extension ApiUsersToModel on Iterable<api.User> {
  List<User> toModel() {
    return map((cm) => cm.toModel()).toList();
  }
}

/// This extension is used to convert a list of models to a list of models.
extension UsersToModel on Iterable<users> {
  List<User> toModel() {
    return map((cm) => cm.toModel()).toList();
  }
}

/// This extension is used to convert a Stream of db models to a Stream of models.
extension UsersStreamToModel on Stream<List<users>> {
  Stream<List<User>> toModel() {
    return map((cm) => cm.toModel());
  }
}

/// This extension is used to convert a Stream of db model to a Stream of model.
extension UserStreamToModel on Stream<users> {
  Stream<User> toModel() {
    return map((cm) => cm.toModel());
  }
}

/// This extension is used to convert a db model to a model.
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
