import 'package:drift/drift.dart';
import 'package:skakel_mobile/db/base/base_table.dart';

@DataClassName('chats')
class ChatEntity extends Table with BaseEntity {
  TextColumn get name => text().nullable()();
}
