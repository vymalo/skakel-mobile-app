import 'package:drift/drift.dart' show Value;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:skakel_mobile/db/base/base_model.dart';
import 'package:skakel_mobile/db/base/sync_status.dart';
import 'package:skakel_mobile/db/db.dart';
import 'package:skakel_mobile/utils/freezed.dart';
import 'package:skakel_mobile/utils/mixins/model_to_companion.dart';

part 'order_item.freezed.dart';
part 'order_item.g.dart';

@appFreezed
class OrderItem
    with _$OrderItem, ModelToCompanion<OrderItemEntityCompanion>
    implements BaseModel {
  const OrderItem._();

  @Implements<SyncableModel>()
  const factory OrderItem({
    required String id,
    required int version,
    required DateTime createdAt,
    required DateTime updatedAt,
    required SyncStatus syncStatus,
    required String orderId,
    required String productId,
    required int quantity,
    required String? notes,
  }) = _OrderItem;

  @override
  OrderItemEntityCompanion toCompanion() {
    return OrderItemEntityCompanion(
      id: Value(id),
      version: Value(version),
      createdAt: Value(createdAt),
      updatedAt: Value(updatedAt),
      syncStatus: Value(syncStatus),
      orderId: Value(orderId),
      productId: Value(productId),
      quantity: Value(quantity),
      notes: Value(notes),
    );
  }

  // Add this factory method to create an instance from JSON data
  factory OrderItem.fromJson(Map<String, dynamic> json) =>
      _$OrderItemFromJson(json);
}
