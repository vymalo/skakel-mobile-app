import 'package:drift/drift.dart';
import 'package:skakel_mobile/db/base/base_model.dart';
import 'package:skakel_mobile/db/base/sync_status.dart';
import 'package:skakel_mobile/db/db.dart';
import 'package:skakel_mobile/utils/mixins/model_to_companion.dart';

class ChatMember
    with ModelToCompanion<ChatMemberEntityCompanion>
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

  int chatId;

  int memberId;

  ChatMember({
    required this.id,
    required this.version,
    required this.createdAt,
    required this.updatedAt,
    required this.syncStatus,
    required this.chatId,
    required this.memberId,
  });

  @override
  ChatMemberEntityCompanion toCompanion() {
    return ChatMemberEntityCompanion(
      id: Value(id),
      version: Value(version),
      createdAt: Value(createdAt),
      updatedAt: Value(updatedAt),
      syncStatus: Value(syncStatus),
      chatId: Value(chatId),
      memberId: Value(memberId),
    );
  }
}
