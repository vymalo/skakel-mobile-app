import 'package:skakel_api/skakel_api.dart' as api;
import 'package:skakel_mobile/db/db.dart';
import 'package:skakel_mobile/models/order_item.dart';
import 'package:skakel_mobile/utils/extensions/sync_status_mapper.dart';

/// This extension is used to convert a list of models to a list of companion objects.
extension ModelsToApiOrderItems on List<OrderItem> {
  List<api.OrderItem> toApi() {
    return map((cm) => cm.toApi()).toList();
  }
}

/// This extension is used to convert a model to a Api OrderItem
extension ModelToApiOrderItem on OrderItem {
  api.OrderItem toApi() {
    final apiOrderItem = api.OrderItemBuilder()
      ..id = id
      ..version = version
      ..createdAt = createdAt
      ..updatedAt = updatedAt
      ..syncStatus = syncStatus.toApi()
      ..productId = productId
      ..quantity = quantity
      ..notes = notes;

    return apiOrderItem.build();
  }
}

/// This extension is used to convert an Api OrderItem to a model
extension ApiOrderItemToModel on api.OrderItem {
  OrderItem toModel() {
    return OrderItem(
      id: id!,
      createdAt: createdAt!,
      updatedAt: updatedAt!,
      syncStatus: syncStatus!.toModel(),
      version: version!,
      productId: productId,
      quantity: quantity,
      notes: notes,
      orderId: orderId,
    );
  }
}

/// This extension is used to convert a list of Api OrderItems to a list of models
extension ApiOrderItemsToModel on Iterable<api.OrderItem> {
  List<OrderItem> toModel() {
    return map((cm) => cm.toModel()).toList();
  }
}

/// This extension is used to convert a list of models to a list of models.
extension OrderItemsToModel on Iterable<order_items> {
  List<OrderItem> toModel() {
    return map((cm) => cm.toModel()).toList();
  }
}

/// This extension is used to convert a Stream of db models to a Stream of models.
extension OrderItemsStreamToModel on Stream<List<order_items>> {
  Stream<List<OrderItem>> toModel() {
    return map((cm) => cm.toModel());
  }
}

/// This extension is used to convert a Stream of db model to a Stream of model.
extension OrderItemStreamToModel on Stream<order_items> {
  Stream<OrderItem> toModel() {
    return map((cm) => cm.toModel());
  }
}

/// This extension is used to convert a db model to a model.
extension OrderItemToModel on order_items {
  OrderItem toModel() {
    return OrderItem(
      id: id,
      createdAt: createdAt,
      updatedAt: updatedAt,
      syncStatus: syncStatus,
      version: version,
      productId: productId,
      quantity: quantity,
      notes: notes,
      orderId: orderId,
    );
  }
}
