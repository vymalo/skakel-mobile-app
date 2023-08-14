import 'package:drift/drift.dart' show Value;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:skakel_mobile/db/base/base_model.dart';
import 'package:skakel_mobile/db/base/sync_status.dart';
import 'package:skakel_mobile/db/db.dart';
import 'package:skakel_mobile/models/order_item.dart';
import 'package:skakel_mobile/utils/freezed.dart';
import 'package:skakel_mobile/utils/mixins/model_to_companion.dart';

part 'order.freezed.dart';
part 'order.g.dart';

@appFreezed
class Order
    with _$Order, ModelToCompanion<OrderEntityCompanion>
    implements BaseModel {
  const Order._();

  @Implements<SyncableModel>()
  const factory Order({
    required String id,
    required int version,
    required DateTime createdAt,
    required DateTime updatedAt,
    required SyncStatus syncStatus,
    required List<OrderItem> items,
    required int totalAmount,
    required DateTime? timestamp,
    required String? status,
    required String buyerId,
    required String sellerId,
  }) = _Order;

  @override
  OrderEntityCompanion toCompanion() {
    return OrderEntityCompanion(
      id: Value(id),
      version: Value(version),
      createdAt: Value(createdAt),
      updatedAt: Value(updatedAt),
      syncStatus: Value(syncStatus),
      totalAmount: Value(totalAmount),
      timestamp: Value(timestamp),
      status: Value(status),
      buyerId: Value(buyerId),
      sellerId: Value(sellerId),
    );
  }

  // Add this factory method to create an instance from JSON data
  factory Order.fromJson(Map<String, dynamic> json) => _$OrderFromJson(json);
}
