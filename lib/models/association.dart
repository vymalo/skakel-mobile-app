import 'package:drift/drift.dart' show Value;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:skakel_mobile/db/base/base_model.dart';
import 'package:skakel_mobile/db/base/sync_status.dart';
import 'package:skakel_mobile/db/db.dart';
import 'package:skakel_mobile/models/association_chat.dart';
import 'package:skakel_mobile/models/association_member.dart';
import 'package:skakel_mobile/utils/freezed.dart';
import 'package:skakel_mobile/utils/mixins/model_to_companion.dart';

part 'association.freezed.dart';

part 'association.g.dart';

@appFreezed
class Association
    with _$Association, ModelToCompanion<AssociationEntityCompanion>
    implements BaseModel {

  const Association._();

  @Implements<SyncableModel>()
  factory Association({
    required final String id,
    required final int version,
    required final DateTime createdAt,
    required final DateTime updatedAt,
    required SyncStatus syncStatus,
    required final List<AssociationMember> members,
    required final List<AssociationChat> chats,
    required final String description,
    required final String name,
  }) = _Association;

  factory Association.fromJson(Map<String, dynamic> json) =>
      _$AssociationFromJson(json);

  @override
  AssociationEntityCompanion toCompanion() {
    return AssociationEntityCompanion(
      id: Value(id),
      version: Value(version),
      createdAt: Value(createdAt),
      updatedAt: Value(updatedAt),
      syncStatus: Value(syncStatus),
      description: Value(description),
      name: Value(name),
    );
  }
}
