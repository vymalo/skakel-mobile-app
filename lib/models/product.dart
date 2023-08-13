import 'package:drift/drift.dart' show Value;
import 'package:json_annotation/json_annotation.dart';
import 'package:skakel_mobile/db/base/base_model.dart';
import 'package:skakel_mobile/db/base/sync_status.dart';
import 'package:skakel_mobile/db/db.dart';
import 'package:skakel_mobile/utils/mixins/model_to_companion.dart';

part 'product.g.dart';

@JsonSerializable()
class Product
    with ModelToCompanion<ProductEntityCompanion>
    implements SyncableModel {
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

  String name;
  String? description;
  int price;
  String sellerId;
  String? content;
  String? productType;

  Product({
    required this.id,
    required this.version,
    required this.createdAt,
    required this.updatedAt,
    required this.syncStatus,
    required this.name,
    this.description,
    required this.price,
    required this.sellerId,
    this.content,
    this.productType,
  });

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

  // Add this method to convert the instance to JSON data
  Map<String, dynamic> toJson() => _$ProductToJson(this);
}
