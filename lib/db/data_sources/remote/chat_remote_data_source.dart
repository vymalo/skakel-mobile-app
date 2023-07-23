import 'package:logging/logging.dart';
import 'package:skakel_api/skakel_api.dart' as api;
import 'package:skakel_mobile/db/base/base_repo.dart';
import 'package:skakel_mobile/db/models/chat.dart';
import 'package:skakel_mobile/utils/extensions/chats_to_model.dart';
import 'package:skakel_mobile/utils/logging.dart';

final log = Logger('ChatRemoteDataSource');

class ChatRemoteDataSource extends BaseRepo<Chat> {
  final api.ChatApi _chatApi;

  ChatRemoteDataSource(this._chatApi);

  @override
  Future<void> delete(Chat entity) async {
    await _chatApi.deleteChat(id: entity.id);
  }

  @override
  Stream<Chat> getById(int id) async* {
    final data = await fetchById(id);
    if (data == null) {
      log.d('Data is null');
      return;
    }

    yield data;
  }

  @override
  Future<Chat> save(Chat entity) async {
    final response = await _chatApi.createChat(chat: entity.toApi());
    final data = response.data;
    if (data == null) {
      throw Exception('ChatRemoteDataSource.getById: data is null');
    }

    return data.toModel();
  }

  @override
  Stream<List<Chat>> streamAll({Map<String, dynamic>? query}) async* {
    final response = await _chatApi.getAllChats();
    final data = response.data;
    if (data == null) {
      log.d('Data is null');
      return;
    }

    yield data.toModel();
  }

  @override
  Future<Chat?> fetchById(int id) async {
    final response = await _chatApi.getChatById(id: id);
    return response.data?.toModel();
  }
}
