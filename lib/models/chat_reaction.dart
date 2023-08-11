import 'package:drift/drift.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:skakel_mobile/db/base/base_model.dart';
import 'package:skakel_mobile/db/base/sync_status.dart';
import 'package:skakel_mobile/db/db.dart';
import 'package:skakel_mobile/models/reaction_type.dart';
import 'package:skakel_mobile/utils/mixins/model_to_companion.dart';

part 'chat_reaction.g.dart';

@JsonSerializable()
class ChatReaction
    with ModelToCompanion<ChatReactionEntityCompanion>
    implements SyncableModel {
  @override
  String id;

  @override
  DateTime createdAt;

  @override
  DateTime updatedAt;

  @override
  int version;

  @override
  SyncStatus syncStatus;

  String userId;

  String messageId;

  ReactionType reactionType;

  String? content;

  ChatReaction({
    required this.id,
    required this.version,
    required this.createdAt,
    required this.updatedAt,
    required this.syncStatus,
    required this.userId,
    required this.messageId,
    required this.reactionType,
    this.content,
  });

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

  // Add this method to convert the instance to JSON data
  Map<String, dynamic> toJson() => _$ChatReactionToJson(this);
}
