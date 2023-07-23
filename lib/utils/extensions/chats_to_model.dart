import 'package:built_collection/built_collection.dart';
import 'package:skakel_api/skakel_api.dart' as api;
import 'package:skakel_mobile/db/db.dart';
import 'package:skakel_mobile/models/chat.dart';
import 'package:skakel_mobile/utils/extensions/sync_status_mapper.dart';
import 'package:skakel_mobile/utils/extensions/users_to_model.dart';

/// This extension is used to convert a list of models to a list of api objects.
extension ModelToApiChat on Chat {
  api.Chat toApi() {
    final apiChat = api.ChatBuilder()
      ..id = id
      ..version = version
      ..createdAt = createdAt
      ..updatedAt = updatedAt
      ..syncStatus = syncStatus.toApi()
      ..name = name
      ..members = ListBuilder(members.toApi());

    return apiChat.build();
  }
}

/// This extension is used to convert a list of api models to a list of models.
extension ApiChatsToModel on Iterable<api.Chat> {
  List<Chat> toModel() {
    return map((e) => e.toModel()).toList();
  }
}

extension ApiChatToModel on api.Chat {
  Chat toModel() {
    return Chat(
      id: id!,
      createdAt: createdAt!,
      updatedAt: updatedAt!,
      syncStatus: syncStatus!.toModel(),
      version: version!,
      name: name,
      members: members.toModel(),
    );
  }
}

extension ChatsToModel on List<ExtendedChat> {
  List<Chat> toModel() {
    return map((chat) => chat.toModel()).toList();
  }
}

extension ChatsStreamToModel on Stream<List<ExtendedChat>> {
  Stream<List<Chat>> toModel() {
    return map((chat) => chat.toModel());
  }
}

extension ChatStreamToModel on Stream<ExtendedChat> {
  Stream<Chat> toModel() {
    return map((chat) => chat.toModel());
  }
}

extension ChatFutureToModel on Future<ExtendedChat> {
  Future<Chat> toModel() {
    return then((chat) => chat.toModel());
  }
}

extension ChatToModel on ExtendedChat {
  Chat toModel() {
    final chat = item1;
    final members = item2;
    return Chat(
      id: chat.id,
      createdAt: chat.createdAt,
      updatedAt: chat.updatedAt,
      syncStatus: chat.syncStatus,
      version: chat.version,
      name: chat.name,
      members: members.toModel(),
    );
  }
}
