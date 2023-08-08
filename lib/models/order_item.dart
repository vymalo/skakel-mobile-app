import 'package:drift/drift.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:skakel_mobile/db/base/base_model.dart';
import 'package:skakel_mobile/db/base/sync_status.dart';
import 'package:skakel_mobile/db/db.dart';
import 'package:skakel_mobile/utils/mixins/model_to_companion.dart';

part 'order_item.g.dart';

@JsonSerializable()
class OrderItem
    with ModelToCompanion<OrderItemEntityCompanion>
    implements BaseModel {
  @override
  String id;

  @override
  DateTime createdAt;

  @override
  DateTime updatedAt;

  @override
  int version;

  @override
  SyncStatus syncStatus;

  String orderId;
  String productId;
  int quantity;
  String? notes;

  OrderItem({
    required this.id,
    required this.version,
    required this.createdAt,
    required this.updatedAt,
    required this.syncStatus,
    required this.orderId,
    required this.productId,
    required this.quantity,
    this.notes,
  });

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

  // Add this method to convert the instance to JSON data
  Map<String, dynamic> toJson() => _$OrderItemToJson(this);
}
