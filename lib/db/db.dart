import 'package:drift/drift.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:rxdart/rxdart.dart';
import 'package:skakel_mobile/db/entities/chat_entity.dart';
import 'package:skakel_mobile/db/entities/chat_member_entity.dart';
import 'package:skakel_mobile/db/entities/chat_message_entity.dart';
import 'package:skakel_mobile/db/entities/user_entity.dart';
import 'package:skakel_mobile/db/models/user.dart';
import 'package:skakel_mobile/db/sqlite_connection/shared_connection.dart';
import 'package:tuple/tuple.dart';

import 'base/sync_status.dart';

part 'db.g.dart';

typedef ExtendedChat = Tuple2<chats, List<users>>;

@DriftDatabase(tables: [
  ChatEntity,
  UserEntity,
  ChatMessageEntity,
  ChatMemberEntity,
])
class AppDatabase extends _$AppDatabase {
// we tell the database where to store the data with this constructor
  AppDatabase() : super(connect());

  // you should bump this number whenever you change or add a table definition.
  // Migrations are covered later in the documentation.
  @override
  int get schemaVersion => 1;

  @override
  MigrationStrategy get migration {
    return MigrationStrategy(
      beforeOpen: (details) async {
        await customStatement('PRAGMA foreign_keys = ON');
        validateDatabaseSchema(this);
      },
    );
  }

  /// Saves a user to the database
  Future<users> insertUser(User user) async {
    final resultId = await into(userEntity)
        .insert(user.toCompanion(), mode: InsertMode.insertOrReplace);

    final query = select(userEntity)..where((tbl) => tbl.id.equals(resultId));

    return query.getSingle();
  }

  /// Saves a chat to the database
  Future<ExtendedChat> insertChat(
    ChatEntityCompanion chat,
    Iterable<UserEntityCompanion> members,
  ) async {
    return transaction(() async {
      // insert the chat
      final resultId = await into(chatEntity).insert(
        chat,
        mode: InsertMode.insertOrReplace,
      );

      // Delete all the members of the chat
      await (delete(chatMemberEntity)
            ..where(
              (tbl) => tbl.chatId.equals(chat.id.value),
            ))
          .go();

      await Future.wait(
        members.map(
          (member) => into(userEntity).insert(
            member,
            mode: InsertMode.insertOrReplace,
          ),
        ),
      );

      // insert the members of the chat
      await Future.wait(
        members.map(
          (member) => into(chatMemberEntity).insert(
            ChatMemberEntityCompanion.insert(
              chatId: resultId,
              memberId: member.id.value,
              createdAt: DateTime.now(),
              updatedAt: DateTime.now(),
              syncStatus: SyncStatus.updated,
              version: 0,
            ),
          ),
        ),
      );

      return watchChat(resultId).first;
    });
  }

  /// Watch a chat by its id
  Stream<ExtendedChat> watchChat(int id) {
    final query = select(chatEntity)..where((tbl) => tbl.id.equals(id));

    final chatStream = query.watchSingle();
    final usersListStream = _getChatMembers(id);

    return Rx.combineLatest2(
      chatStream,
      usersListStream,
      (chat, us) => ExtendedChat(chat, us),
    );
  }

  /// Watch a chat by its id
  Future<ExtendedChat?> getChat(int id) async {
    final query = select(chatEntity)..where((tbl) => tbl.id.equals(id));

    final chats = await query.get();
    if (chats.isEmpty) {
      return null;
    }

    final us = await _getChatMembers(id).first;

    return ExtendedChat(chats.first, us);
  }

  /// Watch all the members of a chat
  Stream<List<users>> _getChatMembers(int chatId) {
    final membersQuery = select(chatMemberEntity).join([
      innerJoin(userEntity, userEntity.id.equalsExp(chatMemberEntity.memberId)),
    ])
      ..where(chatMemberEntity.chatId.equals(chatId));

    final membersStream = membersQuery.watch();

    return membersStream.map((rows) {
      return rows.map((row) => row.readTable(userEntity)).toList();
    });
  }

  /// Watch all the chats
  Stream<List<ExtendedChat>> watchAllChats() {
    final query = select(chatEntity).watch();

    return query.switchMap((cs) {
      final chatStreams = cs.map((chat) => watchChat(chat.id)).toList();
      return Rx.combineLatestList(chatStreams);
    });
  }

  /// Delete a chat
  Future<void> deleteChat(ChatEntityCompanion entry) async {
    await delete(chatEntity).delete(entry);
  }

  /// CLear the database
  Future<void> clear() {
    return transaction(() async {
      await delete(chatEntity).go();
      await delete(userEntity).go();
      await delete(chatMessageEntity).go();
      await delete(chatMemberEntity).go();
    });
  }
}

final dbProvider = Provider((ref) => AppDatabase());
