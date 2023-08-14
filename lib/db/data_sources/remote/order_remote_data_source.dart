import 'package:logging/logging.dart';
import 'package:skakel_api/skakel_api.dart' show OrderApi;
import 'package:skakel_mobile/db/base/base_repo.dart';
import 'package:skakel_mobile/models/order.dart';
import 'package:skakel_mobile/utils/extensions/orders_to_model.dart';
import 'package:skakel_mobile/utils/logging.dart';

final log = Logger('OrderRemoteDataSource');

class OrderRemoteDataSource extends BaseRepo<Order> {
  final OrderApi _api;

  OrderRemoteDataSource(this._api);

  @override
  Future<void> delete(Order entity) async {
    try {
      await _api.cancelOrder(id: entity.id);
    } catch (e, s) {
      log.e('Error deleting Order:', e, s);
    }
  }

  @override
  Stream<Order> getById(String id) async* {
    try {
      final data = await fetchById(id);
      if (data == null) {
        log.d('Data is null');
        return;
      }

      yield data;
    } catch (e, s) {
      log.e('Error getting Order by id:', e, s);
    }
  }

  @override
  Future<Order> save(Order entity) async {
    try {
      final response = await _api.placeOrder(orderInfo: entity.toInfo());
      final data = response.data;
      if (data == null) {
        throw Exception('ChatRemoteDataSource.save: data is null');
      }

      return data.toModel();
    } catch (e, s) {
      log.e('Error saving Order:', e, s);
      rethrow;
    }
  }

  @override
  Stream<List<Order>> streamAll({Map<String, dynamic>? query}) async* {
    try {
      final response = await _api.getOrdersByQuery(
        userId: query?['userId'],
        status: query?['status'],
        startDate: query?['startDate'],
        endDate: query?['endDate'],
      );
      final data = response.data;
      if (data == null) {
        log.d('Data is null');
        return;
      }

      yield data.toModel();
    } catch (e, s) {
      log.e('Error streaming all orders:', e, s);
      yield [];
    }
  }

  @override
  Future<Order?> fetchById(String id) async {
    try {
      final response = await _api.getOrderById(id: id);
      return response.data?.toModel();
    } catch (e, s) {
      log.e('Error fetching Order by id:', e, s);
      return null;
    }
  }
}
