import 'package:drift/drift.dart';
import 'package:skakel_mobile/db/base/base_table.dart';
import 'package:skakel_mobile/db/entities/chat_entity.dart';
import 'package:skakel_mobile/db/entities/user_entity.dart';

@DataClassName('chat_members')
class ChatMemberEntity extends Table with BaseEntity {
  IntColumn get chatId => integer().references(ChatEntity, #id)();

  IntColumn get memberId => integer().references(UserEntity, #id)();
}
