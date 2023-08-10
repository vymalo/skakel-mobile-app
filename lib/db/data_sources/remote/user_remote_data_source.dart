import 'package:logging/logging.dart';
import 'package:skakel_api/skakel_api.dart' as api;
import 'package:skakel_mobile/db/base/base_repo.dart';
import 'package:skakel_mobile/models/user.dart';
import 'package:skakel_mobile/utils/extensions/users_to_model.dart';
import 'package:skakel_mobile/utils/logging.dart';

final log = Logger('UserRemoteDataSource');

class UserRemoteDataSource extends BaseRepo<User> {
  final api.UserApi _api;

  UserRemoteDataSource(this._api);

  @override
  Future<void> delete(User entity) async {
    try {
      await _api.deleteUser(id: entity.id);
    } catch (e, s) {
      log.e('Error deleting User:', e, s);
    }
  }

  @override
  Stream<User> getById(String id) async* {
    try {
      final data = await fetchById(id);
      if (data == null) {
        log.d('Data is null');
        return;
      }

      yield data;
    } catch (e, s) {
      log.e('Error getting User by id:', e, s);
    }
  }

  @override
  Future<User> save(User entity) async {
    try {
      final response = await _api.createUser(userInfo: entity.toApi());
      final data = response.data;
      if (data == null) {
        throw Exception('ChatRemoteDataSource.save: data is null');
      }

      return data.toModel();
    } catch (e, s) {
      log.e('Error saving User:', e, s);
      rethrow;
    }
  }

  @override
  Stream<List<User>> streamAll({Map<String, dynamic>? query}) async* {
    try {
      final response = await _api.getAllUsers();
      final data = response.data;
      if (data == null) {
        log.d('Data is null');
        return;
      }

      yield data.toModel();
    } catch (e, s) {
      log.e('Error streaming all chats:', e, s);
    }
  }

  @override
  Future<User?> fetchById(String id) async {
    try {
      final response = await _api.getUserById(id: id);
      return response.data?.toModel();
    } catch (e, s) {
      log.e('Error fetching User by id:', e, s);
      return null;
    }
  }
}
