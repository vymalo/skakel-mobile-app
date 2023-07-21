import 'package:test/test.dart';
import 'package:skakel_api/skakel_api.dart';


/// tests for ProductApi
void main() {
  final instance = SkakelApi().getProductApi();

  group(ProductApi, () {
    // Add a new product
    //
    //Future<Product> addProduct({ ProductInfo productInfo }) async
    test('test addProduct', () async {
      // TODO
    });

    // Get a product by ID
    //
    //Future<Product> getProductById(int id) async
    test('test getProductById', () async {
      // TODO
    });

    // Get products by query parameters
    //
    //Future<BuiltList<Product>> getProductsByQuery({ String category, double minPrice, double maxPrice, bool inStock }) async
    test('test getProductsByQuery', () async {
      // TODO
    });

  });
}
