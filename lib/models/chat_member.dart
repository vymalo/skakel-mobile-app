import 'package:drift/drift.dart' show Value;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:skakel_mobile/db/base/base_model.dart';
import 'package:skakel_mobile/db/base/sync_status.dart';
import 'package:skakel_mobile/db/db.dart';
import 'package:skakel_mobile/utils/freezed.dart';
import 'package:skakel_mobile/utils/mixins/model_to_companion.dart';

part 'chat_member.g.dart';
part 'chat_member.freezed.dart';

@appFreezed
class ChatMember
    with _$ChatMember, ModelToCompanion<ChatMemberEntityCompanion>
    implements BaseModel {
  const ChatMember._();

  @Implements<SyncableModel>()
  const factory ChatMember({
    required String id,
    required int version,
    required DateTime createdAt,
    required DateTime updatedAt,
    required SyncStatus syncStatus,
    required String chatId,
    required String memberId,
  }) = _ChatMember;

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

  // Add this factory method to create an instance from JSON data
  factory ChatMember.fromJson(Map<String, dynamic> json) =>
      _$ChatMemberFromJson(json);
}
