import 'package:drift/drift.dart';
import 'package:skakel_mobile/db/base/base_table.dart';
import 'package:skakel_mobile/db/entities/order_entity.dart';
import 'package:skakel_mobile/db/entities/product_entity.dart';

@DataClassName('order_items')
class OrderItemEntity extends Table with BaseEntity {
  TextColumn get orderId => text().references(OrderEntity, #id)();

  TextColumn get productId => text().references(ProductEntity, #id)();

  IntColumn get quantity => integer()();

  TextColumn get notes => text().nullable()();
}
