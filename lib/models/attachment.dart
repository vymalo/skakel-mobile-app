import 'package:drift/drift.dart' show Value;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:skakel_mobile/db/base/base_model.dart';
import 'package:skakel_mobile/db/base/sync_status.dart';
import 'package:skakel_mobile/db/db.dart';
import 'package:skakel_mobile/models/attachment_type.dart';
import 'package:skakel_mobile/utils/freezed.dart';
import 'package:skakel_mobile/utils/mixins/model_to_companion.dart';

part 'attachment.freezed.dart';
part 'attachment.g.dart';

@appFreezed
class Attachment
    with _$Attachment, ModelToCompanion<AttachmentEntityCompanion>
    implements BaseModel {
  const Attachment._();

  @Implements<SyncableModel>()
  const factory Attachment({
    required String id,
    required int version,
    required DateTime createdAt,
    required DateTime updatedAt,
    required SyncStatus syncStatus,
    required AttachmentType? attachmentType,
    required String url,
    required String messageId,
  }) = _Attachment;

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
}
