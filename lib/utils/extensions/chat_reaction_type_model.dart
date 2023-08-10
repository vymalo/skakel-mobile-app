import 'package:skakel_api/skakel_api.dart' as api;
import 'package:skakel_mobile/db/db.dart';
import 'package:skakel_mobile/models/chat_reaction.dart';
import 'package:skakel_mobile/models/reaction_type.dart';

extension ApiChatReactionToModel on api.ReactionType {
  ReactionType toModel() {
    switch (this) {
      case api.ReactionType.emoji:
        return ReactionType.emoji;
      default:
        throw Exception('Unknown chat type: $this');
    }
  }
}

extension ChatReactionTypeToApi on ReactionType {
  api.ReactionType toApi() {
    switch (this) {
      case ReactionType.emoji:
        return api.ReactionType.emoji;
      default:
        throw Exception('Unknown chat type: $this');
    }
  }
}

extension ChatReactionToModel on chat_reactions {
  ChatReaction toModel() {
    return ChatReaction(
      id: id,
      version: version,
      createdAt: createdAt,
      updatedAt: updatedAt,
      syncStatus: syncStatus,
      userId: userId,
      messageId: messageId,
      reactionType: reactionType,
      content: content,
    );
  }
}

extension ChatReactionsToModel on Iterable<chat_reactions> {
  List<ChatReaction> toModel() {
    return map((e) => e.toModel()).toList();
  }
}
