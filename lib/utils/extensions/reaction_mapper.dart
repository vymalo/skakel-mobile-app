import 'package:skakel_api/skakel_api.dart' as api;
import 'package:skakel_mobile/models/chat_reaction.dart';
import 'package:skakel_mobile/utils/extensions/chat_reaction_type_model.dart';
import 'package:skakel_mobile/utils/extensions/sync_status_mapper.dart';

extension ApiToChatReaction on api.ChatReaction {
  ChatReaction toModel() {
    return ChatReaction(
      id: id!,
      createdAt: createdAt!,
      updatedAt: updatedAt!,
      syncStatus: syncStatus!.toModel(),
      version: version!,
      userId: userId,
      messageId: messageId,
      reactionType: reactionType.toModel(),
      content: content,
    );
  }
}

extension ApiListToChatReaction on Iterable<api.ChatReaction> {
  List<ChatReaction> toModel() {
    return map((e) => e.toModel()).toList();
  }
}

extension ChatReactionToApi on ChatReaction {
  api.ChatReaction toApi() {
    final apiChatReaction = api.ChatReactionBuilder()
      ..id = id
      ..version = version
      ..createdAt = createdAt
      ..updatedAt = updatedAt
      ..syncStatus = syncStatus.toApi()
      ..userId = userId
      ..messageId = messageId
      ..reactionType = reactionType.toApi()
      ..content = content;

    return apiChatReaction.build();
  }
}

extension ChatReactionsToApi on Iterable<ChatReaction> {
  List<api.ChatReaction> toApi() {
    return map((e) => e.toApi()).toList();
  }
}
