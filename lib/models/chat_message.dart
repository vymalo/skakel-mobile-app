import 'package:drift/drift.dart' show Value;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:skakel_mobile/db/base/base_model.dart';
import 'package:skakel_mobile/db/base/sync_status.dart';
import 'package:skakel_mobile/db/db.dart';
import 'package:skakel_mobile/models/attachment.dart';
import 'package:skakel_mobile/models/chat_reaction.dart';
import 'package:skakel_mobile/utils/freezed.dart';
import 'package:skakel_mobile/utils/mixins/model_to_companion.dart';

part 'chat_message.g.dart';
part 'chat_message.freezed.dart';

@appFreezed
class ChatMessage
    with _$ChatMessage, ModelToCompanion<ChatMessageEntityCompanion>
    implements BaseModel {
  const ChatMessage._();

  @Implements<SyncableModel>()
  const factory ChatMessage({
    required String id,
    required int version,
    required DateTime createdAt,
    required DateTime updatedAt,
    required SyncStatus syncStatus,
    required String content,
    required String chatId,
    required String authorId,
    required List<Attachment> attachments,
    required List<ChatReaction> reactions,
  }) = _ChatMessage;

  @override
  ChatMessageEntityCompanion toCompanion() {
    return ChatMessageEntityCompanion(
      id: Value(id),
      version: Value(version),
      createdAt: Value(createdAt),
      updatedAt: Value(updatedAt),
      syncStatus: Value(syncStatus),
      content: Value(content),
      chatId: Value(chatId),
      authorId: Value(authorId),
    );
  }

  // Add this factory method to create an instance from JSON data
  factory ChatMessage.fromJson(Map<String, dynamic> json) =>
      _$ChatMessageFromJson(json);
}
