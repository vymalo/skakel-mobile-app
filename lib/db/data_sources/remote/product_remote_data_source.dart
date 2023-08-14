import 'package:logging/logging.dart';
import 'package:skakel_api/skakel_api.dart' show ProductApi;
import 'package:skakel_mobile/db/base/base_repo.dart';
import 'package:skakel_mobile/models/product.dart';
import 'package:skakel_mobile/utils/extensions/product_to_model.dart';
import 'package:skakel_mobile/utils/logging.dart';

final log = Logger('ProductRemoteDataSource');

class ProductRemoteDataSource extends BaseRepo<Product> {
  final ProductApi _api;

  ProductRemoteDataSource(this._api);

  @override
  Future<void> delete(Product entity) async {
    try {
      await _api.deleteProductById(id: entity.id);
    } catch (e, s) {
      log.e('Error deleting Product:', e, s);
    }
  }

  @override
  Stream<Product> getById(String id) async* {
    try {
      final data = await fetchById(id);
      if (data == null) {
        log.d('Data is null');
        return;
      }

      yield data;
    } catch (e, s) {
      log.e('Error getting Product by id:', e, s);
    }
  }

  @override
  Future<Product> save(Product entity) async {
    try {
      final response = await _api.addProduct(productInfo: entity.toInfo());
      final data = response.data;
      if (data == null) {
        throw Exception('ChatRemoteDataSource.save: data is null');
      }

      return data.toModel();
    } catch (e, s) {
      log.e('Error saving Product:', e, s);
      rethrow;
    }
  }

  @override
  Stream<List<Product>> streamAll({Map<String, dynamic>? query}) async* {
    try {
      final response = await _api.getProductsByQuery(
        category: query?['category'],
        minPrice: query?['minPrice'],
        maxPrice: query?['maxPrice'],
        inStock: query?['inStock'],
      );
      final data = response.data;
      if (data == null) {
        log.d('Data is null');
        return;
      }

      yield data.toModel();
    } catch (e, s) {
      log.e('Error streaming all products:', e, s);
      yield [];
    }
  }

  @override
  Future<Product?> fetchById(String id) async {
    try {
      final response = await _api.getProductById(id: id);
      return response.data?.toModel();
    } catch (e, s) {
      log.e('Error fetching Product by id:', e, s);
      return null;
    }
  }
}
