import 'package:skakel_api/skakel_api.dart' as api;
import 'package:skakel_mobile/db/db.dart';
import 'package:skakel_mobile/models/chat_message.dart';
import 'package:skakel_mobile/utils/extensions/sync_status_mapper.dart';

/// This extension is used to convert a list of models to a list of api objects.
extension ModelToApiChatMessage on ChatMessage {
  api.ChatMessage toApi() {
    final apiChatMessage = api.ChatMessageBuilder()
      ..id = id
      ..version = version
      ..createdAt = createdAt
      ..updatedAt = updatedAt
      ..syncStatus = syncStatus.toApi()
      ..content = content
      ..chatId = chatId
      ..authorId = authorId;

    return apiChatMessage.build();
  }
}

/// This extension is used to convert a list of api models to a list of models.
extension ApiChatMessagesToModel on Iterable<api.ChatMessage> {
  List<ChatMessage> toModel() {
    return map((e) => e.toModel()).toList();
  }
}

extension ApiChatMessageToModel on api.ChatMessage {
  ChatMessage toModel() => ChatMessage(
      id: id!,
      createdAt: createdAt!,
      updatedAt: updatedAt!,
      syncStatus: syncStatus!.toModel(),
      version: version!,
      content: content,
      chatId: chatId,
      authorId: authorId);
}

extension ChatMessageToModel on chat_messages {
  ChatMessage toModel() => ChatMessage(
      id: id,
      createdAt: createdAt,
      updatedAt: updatedAt,
      syncStatus: syncStatus,
      version: version,
      content: content,
      chatId: chatId,
      authorId: authorId,
  );
}

extension ChatMessagesToModel on Iterable<chat_messages> {
  List<ChatMessage> toModel() {
    return map((e) => e.toModel()).toList();
  }
}

extension ChatMessageStreamListToModel on Stream<List<chat_messages>> {
  Stream<List<ChatMessage>> toModel() {
    return map((e) => e.toModel());
  }
}

extension ChatMessageStreamToModel on Stream<chat_messages> {
  Stream<ChatMessage> toModel() {
    return map((e) => e.toModel());
  }
}

extension ChatMessageFutureToModel on Future<chat_messages?> {
  Future<ChatMessage?> toModel() {
    return then((e) => e?.toModel());
  }
}
