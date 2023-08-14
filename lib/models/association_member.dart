import 'package:drift/drift.dart' show Value;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:skakel_mobile/db/base/base_model.dart';
import 'package:skakel_mobile/db/base/sync_status.dart';
import 'package:skakel_mobile/db/db.dart';
import 'package:skakel_mobile/models/association_role.dart';
import 'package:skakel_mobile/utils/freezed.dart';
import 'package:skakel_mobile/utils/mixins/model_to_companion.dart';

part 'association_member.freezed.dart';
part 'association_member.g.dart';

@appFreezed
class AssociationMember
    with _$AssociationMember, ModelToCompanion<AssociationMemberEntityCompanion>
    implements BaseModel {
  const AssociationMember._();

  @Implements<SyncableModel>()
  const factory AssociationMember({
    required String id,
    required int version,
    required DateTime createdAt,
    required DateTime updatedAt,
    required SyncStatus syncStatus,
    required String userId,
    required String associationId,
    required AssociationRole role,
  }) = _AssociationMember;

  @override
  AssociationMemberEntityCompanion toCompanion() {
    return AssociationMemberEntityCompanion(
      id: Value(id),
      version: Value(version),
      createdAt: Value(createdAt),
      updatedAt: Value(updatedAt),
      syncStatus: Value(syncStatus),
      userId: Value(userId),
      associationId: Value(associationId),
      role: Value(role),
    );
  }

  // Add this factory method to create an instance from JSON data
  factory AssociationMember.fromJson(Map<String, dynamic> json) =>
      _$AssociationMemberFromJson(json);
}
