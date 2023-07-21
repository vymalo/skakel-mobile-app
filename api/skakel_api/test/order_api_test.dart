import 'package:test/test.dart';
import 'package:skakel_api/skakel_api.dart';


/// tests for OrderApi
void main() {
  final instance = SkakelApi().getOrderApi();

  group(OrderApi, () {
    // Cancel an order by ID
    //
    //Future<Order> cancelOrder(int id) async
    test('test cancelOrder', () async {
      // TODO
    });

    // Get an order by ID
    //
    //Future<Order> getOrderById(int id) async
    test('test getOrderById', () async {
      // TODO
    });

    // Get orders by query parameters
    //
    //Future<BuiltList<Order>> getOrdersByQuery({ int userId, String status, Date startDate, Date endDate }) async
    test('test getOrdersByQuery', () async {
      // TODO
    });

    // Place a new order
    //
    //Future<Order> placeOrder({ OrderInfo orderInfo }) async
    test('test placeOrder', () async {
      // TODO
    });

  });
}
