import 'package:drift/drift.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:skakel_mobile/db/base/base_model.dart';
import 'package:skakel_mobile/db/base/sync_status.dart';
import 'package:skakel_mobile/db/db.dart';
import 'package:skakel_mobile/utils/mixins/model_to_companion.dart';

part 'chat_member.g.dart';

@JsonSerializable()
class ChatMember
    with ModelToCompanion<ChatMemberEntityCompanion>
    implements BaseModel {
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

  String chatId;
  String memberId;

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

  // Add this factory method to create an instance from JSON data
  factory ChatMember.fromJson(Map<String, dynamic> json) => _$ChatMemberFromJson(json);

  // Add this method to convert the instance to JSON data
  Map<String, dynamic> toJson() => _$ChatMemberToJson(this);
}
