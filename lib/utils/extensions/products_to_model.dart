import 'package:skakel_api/skakel_api.dart' as api;
import 'package:skakel_mobile/models/product.dart';
import 'package:skakel_mobile/utils/extensions/json_mapper.dart';
import 'package:skakel_mobile/utils/extensions/sync_status_mapper.dart';

/// This extension is used to convert a list of models to a list of api objects.
extension ModelToApiProduct on Product {
  api.Product toApi() {
    final apiProduct = api.ProductBuilder()
      ..id = id
      ..version = version
      ..createdAt = createdAt
      ..updatedAt = updatedAt
      ..syncStatus = syncStatus.toApi()
      ..name = name;

    return apiProduct.build();
  }
}

/// This extension is used to convert a list of api models to a list of models.
extension ApiProductsToModel on Iterable<api.Product> {
  List<Product> toModel() {
    return map((e) => e.toModel()).toList();
  }
}

extension ApiProductToModel on api.Product {
  Product toModel() {
    return Product(
      id: id!,
      createdAt: createdAt!,
      updatedAt: updatedAt!,
      syncStatus: syncStatus!.toModel(),
      version: version!,
      name: name,
      description: description,
      price: price,
      sellerId: seller.id!,
      content: content?.toJsonString(),
      productType: productType,
    );
  }
}
