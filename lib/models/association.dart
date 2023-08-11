import 'package:drift/drift.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:skakel_mobile/db/base/base_model.dart';
import 'package:skakel_mobile/db/base/sync_status.dart';
import 'package:skakel_mobile/db/db.dart';
import 'package:skakel_mobile/models/association_member.dart';
import 'package:skakel_mobile/utils/mixins/model_to_companion.dart';

part 'association.g.dart';

@JsonSerializable()
class Association
    with ModelToCompanion<AssociationEntityCompanion>
    implements SyncableModel {
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

  List<AssociationMember> members;
  String description;
  String name;
  String chatId;

  Association({
    required this.id,
    required this.version,
    required this.createdAt,
    required this.updatedAt,
    required this.syncStatus,
    required this.members,
    required this.description,
    required this.name,
    required this.chatId,
  });

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
      chatId: Value(chatId),
    );
  }

  // Add this factory method to create an instance from JSON data
  factory Association.fromJson(Map<String, dynamic> json) =>
      _$AssociationFromJson(json);

  // Add this method to convert the instance to JSON data
  Map<String, dynamic> toJson() => _$AssociationToJson(this);
}
