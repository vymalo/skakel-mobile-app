import 'package:drift/drift.dart' show Value;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:skakel_mobile/db/base/base_model.dart';
import 'package:skakel_mobile/db/base/sync_status.dart';
import 'package:skakel_mobile/db/db.dart';
import 'package:skakel_mobile/utils/freezed.dart';
import 'package:skakel_mobile/utils/mixins/model_to_companion.dart';

part 'product.freezed.dart';
part 'product.g.dart';

@appFreezed
class Product
    with _$Product, ModelToCompanion<ProductEntityCompanion>
    implements BaseModel {
  const Product._();

  @Implements<SyncableModel>()
  const factory Product({
    required String id,
    required int version,
    required DateTime createdAt,
    required DateTime updatedAt,
    required SyncStatus syncStatus,
    required String name,
    required String? description,
    required int price,
    required String sellerId,
    required String? content,
    required String? productType,
  }) = _Product;

  @override
  ProductEntityCompanion toCompanion() {
    return ProductEntityCompanion(
      id: Value(id),
      version: Value(version),
      createdAt: Value(createdAt),
      updatedAt: Value(updatedAt),
      syncStatus: Value(syncStatus),
      name: Value(name),
      description: Value(description),
      price: Value(price),
      sellerId: Value(sellerId),
      content: Value(content),
      productType: Value(productType),
    );
  }

  // Add this factory method to create an instance from JSON data
  factory Product.fromJson(Map<String, dynamic> json) =>
      _$ProductFromJson(json);
}
