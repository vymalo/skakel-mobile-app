import 'package:drift/drift.dart';
import 'package:skakel_mobile/db/base/base_table.dart';
import 'package:skakel_mobile/db/entities/chat_entity.dart';

@DataClassName('associations')
class AssociationEntity extends Table with BaseEntity {
  TextColumn get description => text()();

  TextColumn get name => text()();

  TextColumn get chatId => text().references(ChatEntity, #id)();
}
