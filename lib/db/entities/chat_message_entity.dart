import 'package:drift/drift.dart';
import 'package:skakel_mobile/db/base/base_table.dart';
import 'package:skakel_mobile/db/entities/chat_entity.dart';
import 'package:skakel_mobile/db/entities/user_entity.dart';

@DataClassName('chat_messages')
class ChatMessageEntity extends Table with BaseEntity {
  TextColumn get content => text().named('body')();

  IntColumn get chatId => integer().references(ChatEntity, #id)();

  IntColumn get authorId => integer().references(UserEntity, #id)();
}
