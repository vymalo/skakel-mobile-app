import 'package:skakel_api/skakel_api.dart' as api;
import 'package:skakel_mobile/db/db.dart';
import 'package:skakel_mobile/models/attachment.dart';
import 'package:skakel_mobile/utils/extensions/attachment_type_mapper.dart';
import 'package:skakel_mobile/utils/extensions/sync_status_mapper.dart';

extension ApiToAttachment on api.Attachment {
  Attachment toModel() {
    return Attachment(
      id: id!,
      createdAt: createdAt!,
      updatedAt: updatedAt!,
      syncStatus: syncStatus!.toModel(),
      version: version!,
      attachmentType: attachmentType?.toModel(),
      url: url,
      messageId: message.id!,
    );
  }
}

extension ApiListToAttachment on Iterable<api.Attachment> {
  List<Attachment> toModel() {
    return map((e) => e.toModel()).toList();
  }
}

extension AttachmentToApi on Attachment {
  api.Attachment toApi() {
    final apiAttachment = api.AttachmentBuilder()
      ..id = id
      ..version = version
      ..createdAt = createdAt
      ..updatedAt = updatedAt
      ..syncStatus = syncStatus.toApi()
      ..message.id = messageId
      ..attachmentType = attachmentType?.toApi()
      ..url = url;

    return apiAttachment.build();
  }
}

extension AttachmentsToApi on Iterable<Attachment> {
  List<api.Attachment> toApi() {
    return map((e) => e.toApi()).toList();
  }
}

extension AttachmentToModel on attachments {
  Attachment toModel() => Attachment(
        id: id,
        version: version,
        createdAt: createdAt,
        updatedAt: updatedAt,
        syncStatus: syncStatus,
        attachmentType: attachmentType,
        url: url,
        messageId: messageId,
      );
}

extension AttachmentsToModel on Iterable<attachments> {
  List<Attachment> toModel() {
    return map((e) => e.toModel()).toList();
  }
}
