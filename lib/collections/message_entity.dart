import 'package:isar/isar.dart';

part 'message_entity.g.dart';

@collection
@Name("messages")
class MessageEntity {
  Id id = Isar.autoIncrement;

  DateTime? timestamp;

  @Index(type: IndexType.value)
  String? content;


  @Index(type: IndexType.value)
  @Name("contact_id")
  int? contactId;

  @Index(type: IndexType.value)
  @Name("chat_id")
  int? chatId;

  @Index(type: IndexType.value)
  @Enumerated(EnumType.ordinal, 'message_type')
  late MessageType type;
}

enum MessageType {
  plaintext(1),
  file(2),
  poll(3);

  final short simpleValue;

  const MessageType(this.simpleValue);
}
