import 'package:drift/drift.dart';
import 'package:skakel_mobile/db/base/base_table.dart';
import 'package:skakel_mobile/models/chat_type.dart';

@DataClassName('chats')
class ChatEntity extends Table with BaseEntity {
  TextColumn get name => text().nullable()();
  TextColumn get chatType => textEnum<ChatType>()();
}
