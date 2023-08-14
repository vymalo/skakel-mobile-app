import 'package:skakel_api/skakel_api.dart' as api;
import 'package:skakel_mobile/db/db.dart';
import 'package:skakel_mobile/models/chat_message.dart';
import 'package:skakel_mobile/utils/extensions/attachment_to_model.dart';
import 'package:skakel_mobile/utils/extensions/chat_reaction_type_model.dart';
import 'package:skakel_mobile/utils/extensions/reaction_mapper.dart';
import 'package:skakel_mobile/utils/extensions/sync_status_mapper.dart';

/// This extension is used to convert a list of models to a list of api objects.
extension ModelToApiChatMessage on ChatMessage {
  api.ChatMessageInfo toApi() {
    final apiChatMessage = api.$ChatMessageInfoBuilder()
      ..id = id
      ..content = content
      ..chatId = chatId
      ..authorId = authorId
      ..attachments.addAll(this.attachments.toApi())
      ..reactions.addAll(reactions.toApi());

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
        authorId: authorId,
        attachments: this.attachments?.toModel() ?? [],
        reactions: reactions?.toModel() ?? [],
      );
}

extension ChatMessageToModel on ExtendedChatMessage {
  ChatMessage toModel() => ChatMessage(
        id: item1.id,
        createdAt: item1.createdAt,
        updatedAt: item1.updatedAt,
        syncStatus: item1.syncStatus,
        version: item1.version,
        content: item1.content,
        chatId: item1.chatId,
        authorId: item1.authorId,
        attachments: item2.toModel(),
        reactions: item3.toModel(),
      );
}

extension ChatMessagesToModel on Iterable<ExtendedChatMessage> {
  List<ChatMessage> toModel() {
    return map((e) => e.toModel()).toList();
  }
}

extension ChatMessageStreamListToModel on Stream<List<ExtendedChatMessage>> {
  Stream<List<ChatMessage>> toModel() {
    return map((e) => e.toModel());
  }
}

extension ChatMessageStreamToModel on Stream<ExtendedChatMessage> {
  Stream<ChatMessage> toModel() {
    return map((e) => e.toModel());
  }
}

extension ChatMessageFutureToModel on Future<ExtendedChatMessage?> {
  Future<ChatMessage?> toModel() {
    return then((e) => e?.toModel());
  }
}
