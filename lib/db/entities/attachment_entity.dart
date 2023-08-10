import 'package:drift/drift.dart';
import 'package:skakel_mobile/db/base/base_table.dart';
import 'package:skakel_mobile/db/entities/chat_message_entity.dart';
import 'package:skakel_mobile/models/attachment_type.dart';

@DataClassName('attachments')
class AttachmentEntity extends Table with BaseEntity {
  TextColumn get attachmentType => textEnum<AttachmentType>().nullable()();

  TextColumn get url => text()();

  TextColumn get messageId => text().references(ChatMessageEntity, #id)();
}
