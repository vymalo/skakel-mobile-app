import 'package:skakel_mobile/db/base/base_repo.dart';
import 'package:skakel_mobile/db/db.dart';
import 'package:skakel_mobile/models/product.dart';
import 'package:skakel_mobile/utils/extensions/product_to_model.dart';

class ProductLocalDataSource extends BaseRepo<Product> {
  final AppDatabase _db;

  ProductLocalDataSource(this._db);

  @override
  Future<void> delete(Product entity) async {
    await _db.deleteProduct(entity.toCompanion());
  }

  @override
  Stream<Product> getById(String id) {
    return _db.watchProduct(id).toModel();
  }

  @override
  Future<Product> save(Product entity) async {
    final saved = await _db.insertProduct(
      entity.toCompanion(),
    );
    return saved.toModel();
  }

  @override
  Stream<List<Product>> streamAll({Map<String, dynamic>? query}) {
    final results = _db.watchAllProducts(query: query);
    return results.toModel();
  }

  @override
  Future<Product?> fetchById(String id) => _db.getProduct(id).toModel();
}
