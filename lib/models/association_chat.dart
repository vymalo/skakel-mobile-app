import 'package:drift/drift.dart' show Value;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:skakel_mobile/db/base/base_model.dart';
import 'package:skakel_mobile/db/base/sync_status.dart';
import 'package:skakel_mobile/db/db.dart';
import 'package:skakel_mobile/utils/freezed.dart';
import 'package:skakel_mobile/utils/mixins/model_to_companion.dart';

part 'association_chat.freezed.dart';

part 'association_chat.g.dart';

@appFreezed
class AssociationChat
    with _$AssociationChat, ModelToCompanion<AssociationChatEntityCompanion>
    implements BaseModel {
  const AssociationChat._();

  @Implements<SyncableModel>()
  const factory AssociationChat({
    required final String id,
    required final int version,
    required final DateTime createdAt,
    required final DateTime updatedAt,
    required SyncStatus syncStatus,
    required final String chatId,
    required final String associationId,
  }) = _AssociationChat;

  @override
  AssociationChatEntityCompanion toCompanion() {
    return AssociationChatEntityCompanion(
      id: Value(id),
      version: Value(version),
      createdAt: Value(createdAt),
      updatedAt: Value(updatedAt),
      syncStatus: Value(syncStatus),
      chatId: Value(chatId),
      associationId: Value(associationId),
    );
  }

  // Add this factory method to create an instance from JSON data
  factory AssociationChat.fromJson(Map<String, dynamic> json) =>
      _$AssociationChatFromJson(json);
}
