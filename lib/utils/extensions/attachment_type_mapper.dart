import 'package:skakel_api/skakel_api.dart' as api;
import 'package:skakel_mobile/models/attachment_type.dart';

extension AttachmentTypeToApi on AttachmentType {
  api.AttachmentType toApi() {
    switch (this) {
      case AttachmentType.image:
        return api.AttachmentType.image;
      case AttachmentType.video:
        return api.AttachmentType.video;
      case AttachmentType.audio:
        return api.AttachmentType.audio;
      case AttachmentType.file:
        return api.AttachmentType.file;
      case AttachmentType.location:
        return api.AttachmentType.location;
      case AttachmentType.contact:
        return api.AttachmentType.contact;
      case AttachmentType.sticker:
        return api.AttachmentType.sticker;
      case AttachmentType.link:
        return api.AttachmentType.link;
      case AttachmentType.poll:
        return api.AttachmentType.poll;
      case AttachmentType.other:
        return api.AttachmentType.other;
      default:
        throw Exception('AttachmentTypeMapper.toApi: unknown attachment type');
    }
  }
}

extension ApiToAttachmentType on api.AttachmentType {
  AttachmentType toModel() {
    switch (this) {
      case api.AttachmentType.image:
        return AttachmentType.image;
      case api.AttachmentType.video:
        return AttachmentType.video;
      case api.AttachmentType.audio:
        return AttachmentType.audio;
      case api.AttachmentType.file:
        return AttachmentType.file;
      case api.AttachmentType.location:
        return AttachmentType.location;
      case api.AttachmentType.contact:
        return AttachmentType.contact;
      case api.AttachmentType.sticker:
        return AttachmentType.sticker;
      case api.AttachmentType.link:
        return AttachmentType.link;
      case api.AttachmentType.poll:
        return AttachmentType.poll;
      case api.AttachmentType.other:
        return AttachmentType.other;
      default:
        throw Exception('AttachmentTypeMapper.toApi: unknown attachment type');
    }
  }
}
