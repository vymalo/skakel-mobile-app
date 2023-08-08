import 'package:logging/logging.dart';
import 'package:skakel_api/skakel_api.dart' as api;
import 'package:skakel_mobile/db/base/base_repo.dart';
import 'package:skakel_mobile/models/chat_message.dart';
import 'package:skakel_mobile/utils/extensions/chat_message_to_model.dart';
import 'package:skakel_mobile/utils/logging.dart';

final log = Logger('ChatMessageRemoteDataSource');

class ChatMessageRemoteDataSource extends BaseRepo<ChatMessage> {
  final api.ChatMessageApi _chatApi;

  ChatMessageRemoteDataSource(this._chatApi);

  @override
  Future<void> delete(ChatMessage entity) async {
    try {
      log.d('Deleting chat message with id: ${entity.id}');
      await _chatApi.deleteChatMessage(id: entity.id);
      log.d('Deleted chat message with id: ${entity.id}');
    } catch (e, s) {
      log.e('Error deleting chat:', e, s);
    }
  }

  @override
  Stream<ChatMessage> getById(String id) async* {
    try {
      log.d('Getting chat by id: $id');
      final data = await fetchById(id);
      if (data == null) {
        log.d('Data is null');
        return;
      }

      log.d('Got chat by id: $id');
      yield data;
    } catch (e, s) {
      log.e('Error getting chat by id:', e, s);
    }
  }

  @override
  Future<ChatMessage> save(ChatMessage entity) async {
    try {
      final response = await _chatApi.sendMessageToChat(
        id: entity.chatId,
        chatMessage: entity.toApi(),
      );
      final data = response.data;
      if (data == null) {
        throw Exception('ChatMessageRemoteDataSource.save: data is null');
      }

      return data.toModel();
    } catch (e, s) {
      log.e('Error saving chat:', e, s);
      rethrow;
    }
  }

  @override
  Stream<List<ChatMessage>> streamAll({Map<String, dynamic>? query}) async* {
    try {
      final response = await _chatApi.getAllChatMessages();
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
  Future<ChatMessage?> fetchById(String id) async {
    try {
      final response = await _chatApi.getChatMessageById(id: id);
      return response.data?.toModel();
    } catch (e, s) {
      log.e('Error fetching chat by id:', e, s);
      return null;
    }
  }
}
