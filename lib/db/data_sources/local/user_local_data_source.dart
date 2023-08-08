import 'package:skakel_mobile/db/base/base_repo.dart';
import 'package:skakel_mobile/db/db.dart';
import 'package:skakel_mobile/models/user.dart';
import 'package:skakel_mobile/utils/extensions/users_to_model.dart';

class UserLocalDataSource extends BaseRepo<User> {
  final AppDatabase _db;

  UserLocalDataSource(this._db);

  @override
  Future<void> delete(User entity) async {
    await _db.deleteUser(entity.toCompanion());
  }

  @override
  Stream<User> getById(String id) {
    return _db.watchUser(id).toModel();
  }

  @override
  Future<User> save(User entity) async {
    final saved = await _db.insertUser(
      entity.toCompanion(),
    );
    return saved.toModel();
  }

  @override
  Stream<List<User>> streamAll({Map<String, dynamic>? query}) {
    final results = _db.watchAllUsers(query: query);
    return results.toModel();
  }

  @override
  Future<User?> fetchById(String id) => _db.getUser(id).toModel();
}
