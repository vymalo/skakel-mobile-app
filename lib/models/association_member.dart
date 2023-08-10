import 'package:drift/drift.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:skakel_mobile/db/base/base_model.dart';
import 'package:skakel_mobile/db/base/sync_status.dart';
import 'package:skakel_mobile/db/db.dart';
import 'package:skakel_mobile/models/association_role.dart';
import 'package:skakel_mobile/utils/mixins/model_to_companion.dart';

part 'association_member.g.dart';

@JsonSerializable()
class AssociationMember
    with ModelToCompanion<AssociationMemberEntityCompanion>
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

  String userId;
  String associationId;
  AssociationRole role;

  AssociationMember({
    required this.id,
    required this.version,
    required this.createdAt,
    required this.updatedAt,
    required this.syncStatus,
    required this.userId,
    required this.associationId,
    required this.role,
  });

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

  // Add this method to convert the instance to JSON data
  Map<String, dynamic> toJson() => _$AssociationMemberToJson(this);
}
