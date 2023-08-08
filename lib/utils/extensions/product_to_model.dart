import 'package:skakel_api/skakel_api.dart' show ProductInfoBuilder, ProductInfo;
import 'package:skakel_api/skakel_api.dart' as api;
import 'package:skakel_mobile/db/db.dart';
import 'package:skakel_mobile/models/product.dart';
import 'package:skakel_mobile/utils/extensions/json_mapper.dart';
import 'package:skakel_mobile/utils/extensions/sync_status_mapper.dart';

extension ProductToInfo on Product {
  ProductInfo toInfo() {
    final builder = ProductInfoBuilder()
      ..name = name
      ..description = description
      ..price = price
      ..seller.id = sellerId
      ..content = content?.toJsonObject()
      ..productType = productType
    ;

    return builder.build();
  }
}

extension ProductInfoToModel on api.Product {
  Product toModel() {
    return Product(
      id: id!,
      version: version!,
      createdAt: createdAt!,
      updatedAt: updatedAt!,
      syncStatus: syncStatus!.toModel(),
      name: name,
      description: description,
      price: price,
      sellerId: seller.id!,
      content: content?.toJsonString(),
      productType: productType,
    );
  }
}

extension ProductIterableToModel on Iterable<api.Product> {
  List<Product> toModel() {
    return map((e) => e.toModel()).toList();
  }
}

extension ProductStreamToModel on Stream<products> {
  Stream<Product> toModel() {
    return map((e) => e.toModel());
  }
}

extension ProductListStreamToModel on Stream<List<products>> {
  Stream<List<Product>> toModel() {
    return map((e) => e.toModel());
  }
}

extension ProductListToModel on List<products> {
  List<Product> toModel() {
    return map((e) => e.toModel()).toList();
  }
}


extension FutureProductListToModel on Future<List<products>> {
  Future<List<Product>> toModel() async {
    return (await this).toModel();
  }
}

extension FutureProductToModel on Future<products> {
  Future<Product> toModel() async {
    return (await this).toModel();
  }
}

extension FutureNullableProductToModel on Future<products?> {
  Future<Product?> toModel() async {
    return (await this)?.toModel();
  }
}

extension ProductEntityToModel on products {
  Product toModel() {
    return Product(
      id: id,
      version: version,
      createdAt: createdAt,
      updatedAt: updatedAt,
      syncStatus: syncStatus,
      name: name,
      description: description,
      price: price,
      sellerId: sellerId,
      content: content,
      productType: productType,
    );
  }
}