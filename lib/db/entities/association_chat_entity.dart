import 'package:drift/drift.dart';
import 'package:skakel_mobile/db/base/base_table.dart';
import 'package:skakel_mobile/db/entities/association_entity.dart';
import 'package:skakel_mobile/db/entities/chat_entity.dart';

@DataClassName('association_chats')
class AssociationChatEntity extends Table with BaseEntity {
  TextColumn get chatId => text().references(ChatEntity, #id)();

  TextColumn get associationId => text().references(AssociationEntity, #id)();
}
