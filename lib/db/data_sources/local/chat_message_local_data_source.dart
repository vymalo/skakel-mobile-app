import 'package:skakel_mobile/db/base/base_repo.dart';
import 'package:skakel_mobile/db/db.dart';
import 'package:skakel_mobile/models/chat_message.dart';
import 'package:skakel_mobile/utils/extensions/chat_message_to_model.dart';
import 'package:skakel_mobile/utils/extensions/model_to_companion_mapper.dart';

class ChatMessageLocalDataSource extends BaseRepo<ChatMessage> {
  final AppDatabase _db;

  ChatMessageLocalDataSource(this._db);

  @override
  Future<void> delete(ChatMessage entity) async {
    await _db.deleteChatMessage(
      entity.toCompanion(),
      entity.attachments.toCompanion(),
      entity.reactions.toCompanion(),
    );
  }

  @override
  Stream<ChatMessage> getById(String id) {
    return _db.watchChatMessage(id).toModel();
  }

  @override
  Future<ChatMessage> save(ChatMessage entity) async {
    final saved = await _db.insertChatMessage(
      entity.toCompanion(),
      entity.attachments.toCompanion(),
      entity.reactions.toCompanion(),
    );
    return saved.toModel();
  }

  @override
  Stream<List<ChatMessage>> streamAll({Map<String, dynamic>? query}) {
    final results = _db.watchAllChatMessages();
    return results.toModel();
  }

  @override
  Future<ChatMessage?> fetchById(String id) => _db.getChatMessage(id).toModel();
}
