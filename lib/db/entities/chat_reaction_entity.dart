import 'package:drift/drift.dart';
import 'package:skakel_mobile/db/base/base_table.dart';
import 'package:skakel_mobile/db/entities/chat_message_entity.dart';
import 'package:skakel_mobile/db/entities/user_entity.dart';
import 'package:skakel_mobile/models/reaction_type.dart';

@DataClassName('chat_reactions')
class ChatReactionEntity extends Table with BaseEntity {
  TextColumn get userId => text().references(UserEntity, #id)();

  TextColumn get messageId => text().references(ChatMessageEntity, #id)();

  TextColumn get reactionType => textEnum<ReactionType>()();

  TextColumn get content => text().nullable()();
}
