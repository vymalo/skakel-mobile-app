import 'package:drift/drift.dart' show Value;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:skakel_mobile/db/base/base_model.dart';
import 'package:skakel_mobile/db/base/sync_status.dart';
import 'package:skakel_mobile/db/db.dart';
import 'package:skakel_mobile/models/chat_member.dart';
import 'package:skakel_mobile/models/chat_type.dart';
import 'package:skakel_mobile/utils/freezed.dart';
import 'package:skakel_mobile/utils/mixins/model_to_companion.dart';

part 'chat.freezed.dart';
part 'chat.g.dart';

@appFreezed
class Chat
    with _$Chat, ModelToCompanion<ChatEntityCompanion>
    implements BaseModel {
  const Chat._();

  @Implements<SyncableModel>()
  const factory Chat({
    required String id,
    required int version,
    required DateTime createdAt,
    required DateTime updatedAt,
    required SyncStatus syncStatus,
    required String? name,
    required List<ChatMember> members,
    required ChatType chatType,
  }) = _Chat;

  @override
  ChatEntityCompanion toCompanion() {
    return ChatEntityCompanion(
      id: Value(id),
      version: Value(version),
      createdAt: Value(createdAt),
      updatedAt: Value(updatedAt),
      syncStatus: Value(syncStatus),
      name: Value(name),
      chatType: Value(chatType),
    );
  }

  // Add this factory method to create an instance from JSON data
  factory Chat.fromJson(Map<String, dynamic> json) => _$ChatFromJson(json);
}
