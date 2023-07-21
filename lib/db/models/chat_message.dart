import 'package:drift/drift.dart';
import 'package:skakel_mobile/db/base/base_model.dart';
import 'package:skakel_mobile/db/base/sync_status.dart';
import 'package:skakel_mobile/db/db.dart';
import 'package:skakel_mobile/utils/mixins/model_to_companion.dart';

class ChatMessage
    with ModelToCompanion<ChatMessageEntityCompanion>
    implements BaseModel {

  @override
  int id;

  @override
  DateTime createdAt;

  @override
  DateTime updatedAt;

  @override
  int version;

  @override
  SyncStatus syncStatus;

  String content;

  int chatId;

  int authorId;

  ChatMessage({
    required this.id,
    required this.version,
    required this.createdAt,
    required this.updatedAt,
    required this.syncStatus,
    required this.content,
    required this.chatId,
    required this.authorId,
  });

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
}
