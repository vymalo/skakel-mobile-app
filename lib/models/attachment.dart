import 'package:drift/drift.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:skakel_mobile/db/base/base_model.dart';
import 'package:skakel_mobile/db/base/sync_status.dart';
import 'package:skakel_mobile/db/db.dart';
import 'package:skakel_mobile/models/attachment_type.dart';
import 'package:skakel_mobile/utils/mixins/model_to_companion.dart';

part 'attachment.g.dart';

@JsonSerializable()
class Attachment
    with ModelToCompanion<AttachmentEntityCompanion>
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

  AttachmentType? attachmentType;
  String url;
  String messageId;

  Attachment({
    required this.id,
    required this.version,
    required this.createdAt,
    required this.updatedAt,
    required this.syncStatus,
    this.attachmentType,
    required this.url,
    required this.messageId,
  });

  @override
  AttachmentEntityCompanion toCompanion() {
    return AttachmentEntityCompanion(
      id: Value(id),
      version: Value(version),
      createdAt: Value(createdAt),
      updatedAt: Value(updatedAt),
      syncStatus: Value(syncStatus),
      attachmentType: Value(attachmentType),
      url: Value(url),
      messageId: Value(messageId),
    );
  }

  // Add this factory method to create an instance from JSON data
  factory Attachment.fromJson(Map<String, dynamic> json) =>
      _$AttachmentFromJson(json);

  // Add this method to convert the instance to JSON data
  Map<String, dynamic> toJson() => _$AttachmentToJson(this);
}
