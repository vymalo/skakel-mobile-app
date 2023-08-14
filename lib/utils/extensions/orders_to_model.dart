import 'package:built_collection/built_collection.dart';
import 'package:skakel_api/skakel_api.dart' as api;
import 'package:skakel_mobile/db/db.dart';
import 'package:skakel_mobile/models/order.dart';
import 'package:skakel_mobile/utils/extensions/order_item_to_model.dart';
import 'package:skakel_mobile/utils/extensions/sync_status_mapper.dart';

/// This extension is used to convert a list of models to a list of api objects.
extension ModelToApiOrder on Order {
  api.Order toApi() {
    final apiOrder = api.OrderBuilder()
      ..id = id
      ..version = version
      ..createdAt = createdAt
      ..updatedAt = updatedAt
      ..syncStatus = syncStatus.toApi()
      ..items = ListBuilder(items.toApi())
      ..totalAmount = totalAmount
      ..timestamp = timestamp
      ..status = status
      ..buyer.id = buyerId
      ..seller.id = sellerId;

    return apiOrder.build();
  }
}

/// This extension is used to convert a list of api models to a list of models.
extension ApiOrdersToModel on Iterable<api.Order> {
  List<Order> toModel() {
    return map((e) => e.toModel()).toList();
  }
}

extension ApiOrderToModel on api.Order {
  Order toModel() {
    return Order(
      id: id!,
      createdAt: createdAt!,
      updatedAt: updatedAt!,
      syncStatus: syncStatus!.toModel(),
      version: version!,
      items: items.toModel(),
      totalAmount: totalAmount,
      timestamp: timestamp,
      status: status,
      buyerId: buyer.id!,
      sellerId: seller.id!,
    );
  }
}

extension OrdersToModel on List<ExtendedOrder> {
  List<Order> toModel() {
    return map((chat) => chat.toModel()).toList();
  }
}

extension OrdersStreamToModel on Stream<List<ExtendedOrder>> {
  Stream<List<Order>> toModel() {
    return map((chat) => chat.toModel());
  }
}

extension OrderStreamToModel on Stream<ExtendedOrder> {
  Stream<Order> toModel() {
    return map((chat) => chat.toModel());
  }
}

extension OrderFutureToModel on Future<ExtendedOrder> {
  Future<Order> toModel() {
    return then((chat) => chat.toModel());
  }
}

extension OrderFutureNullableToModel on Future<ExtendedOrder?> {
  Future<Order?> toModel() {
    return then((chat) => chat?.toModel());
  }
}

extension OrderToModel on ExtendedOrder {
  Order toModel() {
    final chat = item1;
    final items = item2;
    return Order(
      id: chat.id,
      createdAt: chat.createdAt,
      updatedAt: chat.updatedAt,
      syncStatus: chat.syncStatus,
      version: chat.version,
      items: items.toModel(),
      totalAmount: chat.totalAmount,
      timestamp: chat.timestamp,
      status: chat.status,
      buyerId: chat.buyerId,
      sellerId: chat.sellerId,
    );
  }
}

extension OrderToInfo on Order {
  api.OrderInfo toInfo() {
    final apiOrder = api.$OrderInfoBuilder()
      ..items = ListBuilder(items.toApi())
      ..totalAmount = totalAmount
      ..timestamp = timestamp
      ..status = status
      ..buyer.id = buyerId
      ..seller.id = sellerId;

    return apiOrder.build();
  }
}
