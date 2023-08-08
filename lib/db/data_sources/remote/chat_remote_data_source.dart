import 'package:logging/logging.dart';
import 'package:skakel_api/skakel_api.dart' as api;
import 'package:skakel_mobile/db/base/base_repo.dart';
import 'package:skakel_mobile/models/chat.dart';
import 'package:skakel_mobile/utils/extensions/chats_to_model.dart';
import 'package:skakel_mobile/utils/logging.dart';

final log = Logger('ChatRemoteDataSource');

class ChatRemoteDataSource extends BaseRepo<Chat> {
  final api.ChatApi _chatApi;

  ChatRemoteDataSource(this._chatApi);

  @override
  Future<void> delete(Chat entity) async {
    try {
      await _chatApi.deleteChat(id: entity.id);
    } catch (e, s) {
      log.e('Error deleting chat:', e, s);
    }
  }

  @override
  Stream<Chat> getById(String id) async* {
    try {
      final data = await fetchById(id);
      if (data == null) {
        log.d('Data is null');
        return;
      }

      yield data;
    } catch (e, s) {
      log.e('Error getting chat by id:', e, s);
    }
  }

  @override
  Future<Chat> save(Chat entity) async {
    try {
      final response = await _chatApi.createChat(chat: entity.toApi());
      final data = response.data;
      if (data == null) {
        throw Exception('ChatRemoteDataSource.save: data is null');
      }

      return data.toModel();
    } catch (e, s) {
      log.e('Error saving chat:', e, s);
      rethrow;
    }
  }

  @override
  Stream<List<Chat>> streamAll({Map<String, dynamic>? query}) async* {
    try {
      final response = await _chatApi.getAllChats();
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
  Future<Chat?> fetchById(String id) async {
    try {
      final response = await _chatApi.getChatById(id: id);
      return response.data?.toModel();
    } catch (e, s) {
      log.e('Error fetching chat by id:', e, s);
      return null;
    }
  }
}
