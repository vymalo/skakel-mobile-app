import 'package:drift/drift.dart';
import 'package:skakel_mobile/db/base/base_table.dart';
import 'package:skakel_mobile/db/entities/chat_entity.dart';
import 'package:skakel_mobile/db/entities/user_entity.dart';

@DataClassName('chat_members')
class ChatMemberEntity extends Table with BaseEntity {
  TextColumn get chatId => text().references(ChatEntity, #id)();

  TextColumn get memberId => text().references(UserEntity, #id)();
}
