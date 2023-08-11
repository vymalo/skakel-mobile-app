import 'package:drift/drift.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:skakel_mobile/db/base/base_model.dart';
import 'package:skakel_mobile/db/base/sync_status.dart';
import 'package:skakel_mobile/db/db.dart';
import 'package:skakel_mobile/models/order_item.dart';
import 'package:skakel_mobile/utils/mixins/model_to_companion.dart';

part 'order.g.dart';

@JsonSerializable()
class Order with ModelToCompanion<OrderEntityCompanion> implements SyncableModel {
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

  List<OrderItem> items;
  int totalAmount;
  DateTime? timestamp;
  String? status;
  String buyerId;
  String sellerId;

  Order({
    required this.id,
    required this.version,
    required this.createdAt,
    required this.updatedAt,
    required this.syncStatus,
    required this.items,
    required this.totalAmount,
    this.timestamp,
    this.status,
    required this.buyerId,
    required this.sellerId,
  });

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

  // Add this method to convert the instance to JSON data
  Map<String, dynamic> toJson() => _$OrderToJson(this);
}
