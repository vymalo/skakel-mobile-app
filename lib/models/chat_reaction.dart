import 'package:drift/drift.dart' show Value;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:skakel_mobile/db/base/base_model.dart';
import 'package:skakel_mobile/db/base/sync_status.dart';
import 'package:skakel_mobile/db/db.dart';
import 'package:skakel_mobile/models/reaction_type.dart';
import 'package:skakel_mobile/utils/freezed.dart';
import 'package:skakel_mobile/utils/mixins/model_to_companion.dart';

part 'chat_reaction.freezed.dart';

part 'chat_reaction.g.dart';

@appFreezed
class ChatReaction
    with _$ChatReaction, ModelToCompanion<ChatReactionEntityCompanion>
    implements BaseModel {
  const ChatReaction._();

  @Implements<SyncableModel>()
  const factory ChatReaction({
    required String id,
    required int version,
    required DateTime createdAt,
    required DateTime updatedAt,
    required SyncStatus syncStatus,
    required String userId,
    required final String messageId,
    required final ReactionType reactionType,
    required final String? content,
  }) = _ChatReaction;

  @override
  ChatReactionEntityCompanion toCompanion() {
    return ChatReactionEntityCompanion(
      id: Value(id),
      version: Value(version),
      createdAt: Value(createdAt),
      updatedAt: Value(updatedAt),
      syncStatus: Value(syncStatus),
      userId: Value(userId),
      messageId: Value(messageId),
      reactionType: Value(reactionType),
      content: Value(content),
    );
  }

  // Add this factory method to create an instance from JSON data
  factory ChatReaction.fromJson(Map<String, dynamic> json) =>
      _$ChatReactionFromJson(json);
}
