import 'package:drift/drift.dart';
import 'package:skakel_mobile/db/base/base_table.dart';
import 'package:skakel_mobile/db/entities/user_entity.dart';

@DataClassName('orders')
class OrderEntity extends Table with BaseEntity {
  IntColumn get totalAmount => integer().named('total_amount')();

  DateTimeColumn get timestamp => dateTime().nullable()();

  TextColumn get status => text().nullable()();

  TextColumn get buyerId =>
      text().named('buyer_id').references(UserEntity, #id)();

  TextColumn get sellerId =>
      text().named('seller_id').references(UserEntity, #id)();
}
