import 'package:drift/drift.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:rxdart/rxdart.dart';
import 'package:skakel_mobile/db/entities/blocked_user_entity.dart';
import 'package:skakel_mobile/db/entities/chat_entity.dart';
import 'package:skakel_mobile/db/entities/chat_member_entity.dart';
import 'package:skakel_mobile/db/entities/chat_message_entity.dart';
import 'package:skakel_mobile/db/entities/order_entity.dart';
import 'package:skakel_mobile/db/entities/order_item_entity.dart';
import 'package:skakel_mobile/db/entities/product_entity.dart';
import 'package:skakel_mobile/db/entities/user_entity.dart';
import 'package:skakel_mobile/db/entities/user_settings_entity.dart';
import 'package:skakel_mobile/db/sqlite_connection/shared_connection.dart';
import 'package:skakel_mobile/models/chat_type.dart';
import 'package:skakel_mobile/utils/id.dart';
import 'package:tuple/tuple.dart';

import 'base/sync_status.dart';

part 'db.g.dart';

typedef ExtendedChat = Tuple2<chats, List<chat_members>>;
typedef ExtendedOrder = Tuple2<orders, List<order_items>>;

/// The app database
@DriftDatabase(tables: [
  ChatEntity,
  UserEntity,
  ChatMessageEntity,
  ChatMemberEntity,
  BlockedUserEntity,
  OrderEntity,
  OrderItemEntity,
  ProductEntity,
  UserSettingsEntity,
])
class AppDatabase extends _$AppDatabase {
// we tell the database where to store the data with this constructor
  AppDatabase() : super(connect());

  // you should bump this number whenever you change or add a table definition.
  // Migrations are covered later in the documentation.
  @override
  int get schemaVersion => 2;

  @override
  MigrationStrategy get migration {
    return MigrationStrategy(
      beforeOpen: (details) async {
        await customStatement('PRAGMA foreign_keys = ON');
        validateDatabaseSchema(this);
      },
      onUpgrade: (m, from, to) async {
        if (from == 1 && to == 2) {
          await clear();
          await m.createTable(chatEntity);
          await m.createTable(userEntity);
          await m.createTable(chatMessageEntity);
          await m.createTable(chatMemberEntity);
        }
      },
    );
  }

  /// Saves a user to the database
  Future<users> insertUser(UserEntityCompanion user) async {
    final userInserted = await into(userEntity)
        .insertReturning(user, mode: InsertMode.insertOrReplace);

    final query = select(userEntity)
      ..where((tbl) => tbl.id.equals(userInserted.id));

    return query.getSingle();
  }

  /// Saves a chat to the database
  Future<ExtendedChat> insertChat(
    ChatEntityCompanion chat,
    Iterable<ChatMemberEntityCompanion> members,
  ) async {
    return transaction(() async {
      // insert the chat
      final insertedChat = await into(chatEntity).insertReturning(
        chat,
        mode: InsertMode.insertOrReplace,
      );

      await batch((batch) {
        batch.deleteWhere(
          chatMemberEntity,
          (tbl) => tbl.chatId.equals(chat.id.value),
        );
        batch.insertAllOnConflictUpdate(chatMemberEntity, members);
      });

      return watchChat(insertedChat.id).first;
    });
  }

  /// Watch a chat by its id
  Stream<ExtendedChat> watchChat(String id) {
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
  Future<ExtendedChat?> getChat(String id) async {
    final query = select(chatEntity)..where((tbl) => tbl.id.equals(id));

    final chats = await query.get();
    if (chats.isEmpty) {
      return null;
    }

    final us = await _getChatMembers(id).first;

    return ExtendedChat(chats.first, us);
  }

  /// Watch all the members of a chat
  Stream<List<chat_members>> _getChatMembers(String chatId) {
    final membersQuery = select(chatMemberEntity)
      ..where((tbl) => tbl.chatId.equals(chatId));
    final membersStream = membersQuery.watch();
    return membersStream;
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
      await delete(chatMemberEntity).go();
      await delete(chatMessageEntity).go();
      await delete(chatEntity).go();
      await delete(userEntity).go();
    });
  }

  Future<void> deleteUser(UserEntityCompanion companion) async {
    await delete(userEntity).delete(companion);
  }

  Stream<users> watchUser(String id) {
    final query = select(userEntity)..where((tbl) => tbl.id.equals(id));
    final uStream = query.watchSingle();
    return uStream;
  }

  Stream<List<users>> watchAllUsers({Map<String, dynamic>? query}) {
    final query = select(userEntity).watch();
    return query;
  }

  Future<users?> getUser(String id) {
    final query = select(userEntity)..where((tbl) => tbl.id.equals(id));
    return query.getSingleOrNull();
  }

  Stream<List<products>> watchAllProducts({Map<String, dynamic>? query}) {
    final query = select(productEntity).watch();
    return query;
  }

  Future<products?> getProduct(String id) {
    final query = select(productEntity)..where((tbl) => tbl.id.equals(id));
    return query.getSingleOrNull();
  }

  Future<products> insertProduct(ProductEntityCompanion companion) {
    return into(productEntity).insertReturning(companion);
  }

  Stream<products> watchProduct(String id) {
    final query = select(productEntity)..where((tbl) => tbl.id.equals(id));
    final uStream = query.watchSingle();
    return uStream;
  }

  Future<void> deleteProduct(ProductEntityCompanion companion) async {
    await delete(productEntity).delete(companion);
  }

  Future<void> deleteChatMessage(ChatMessageEntityCompanion companion) {
    return delete(chatMessageEntity).delete(companion);
  }

  Stream<chat_messages> watchChatMessage(String id) {
    final query = select(chatMessageEntity)..where((tbl) => tbl.id.equals(id));
    final uStream = query.watchSingle();
    return uStream;
  }

  Future<chat_messages> insertChatMessage(
      ChatMessageEntityCompanion companion) {
    return into(chatMessageEntity).insertReturning(companion);
  }

  Stream<List<chat_messages>> watchAllChatMessages() {
    final query = select(chatMessageEntity).watch();
    return query;
  }

  Future<chat_messages?> getChatMessage(String id) {
    final query = select(chatMessageEntity)..where((tbl) => tbl.id.equals(id));
    return query.getSingleOrNull();
  }

  Future<void> deleteOrder(OrderEntityCompanion companion) {
    return delete(orderEntity).delete(companion);
  }

  /// Watch the order
  Stream<ExtendedOrder> watchOrder(String id) {
    final query = select(orderEntity)..where((tbl) => tbl.id.equals(id));
    final uStream = query.watchSingle();
    final orderItemsStream = _getOrderItems(id);
    return Rx.combineLatest2(
      uStream,
      orderItemsStream,
      (order, items) => ExtendedOrder(order, items),
    );
  }

  Future<ExtendedOrder> insertOrder(
    OrderEntityCompanion companion,
    Iterable<OrderItemEntityCompanion> items,
  ) {
    return transaction(() async {
      final order = await into(orderEntity).insertReturning(companion);
      final copiedItems =
          items.map((item) => item.copyWith(orderId: Value(order.id))).toList();

      await batch((batch) {
        batch.deleteWhere(
          orderItemEntity,
          (tbl) => tbl.orderId.equals(order.id),
        );
        batch.insertAll(orderItemEntity, copiedItems);
      });
      return watchOrder(order.id).first;
    });
  }

  Stream<List<ExtendedOrder>> watchAllOrders({Map<String, dynamic>? query}) {
    final query = select(orderEntity).watch();
    return query.switchMap((cs) {
      final orderStreams = cs.map((order) => watchOrder(order.id)).toList();
      return Rx.combineLatestList(orderStreams);
    });
  }

  Future<ExtendedOrder?> getOrder(String id) {
    final query = select(orderEntity)..where((tbl) => tbl.id.equals(id));
    return query.getSingleOrNull().then((value) {
      if (value == null) {
        return null;
      }

      return watchOrder(value.id).first;
    });
  }

  Stream<List<order_items>> _getOrderItems(String orderId) {
    final itemsQuery = select(orderItemEntity)
      ..where((tbl) => tbl.orderId.equals(orderId));
    final itemsStream = itemsQuery.watch();
    return itemsStream;
  }
}

final dbProvider = Provider((ref) => AppDatabase());
