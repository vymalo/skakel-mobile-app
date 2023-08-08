import 'package:skakel_mobile/db/base/base_repo.dart';
import 'package:skakel_mobile/db/db.dart';
import 'package:skakel_mobile/models/chat.dart';
import 'package:skakel_mobile/utils/extensions/chats_to_model.dart';

class ChatLocalDataSource extends BaseRepo<Chat> {
  final AppDatabase _db;

  ChatLocalDataSource(this._db);

  @override
  Future<void> delete(Chat entity) async {
    await _db.deleteChat(entity.toCompanion());
  }

  @override
  Stream<Chat> getById(String id) {
    return _db.watchChat(id).toModel();
  }

  @override
  Future<Chat> save(Chat entity) async {
    final saved = await _db.insertChat(
      entity.toCompanion(),
      entity.members.map((e) => e.toCompanion()),
    );
    return saved.toModel();
  }

  @override
  Stream<List<Chat>> streamAll({Map<String, dynamic>? query}) {
    final results = _db.watchAllChats();
    return results.toModel();
  }

  @override
  Future<Chat?> fetchById(String id) =>
      _db.getChat(id).then((value) => value?.toModel());
}
