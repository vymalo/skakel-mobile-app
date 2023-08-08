import 'package:skakel_mobile/db/base/base_repo.dart';
import 'package:skakel_mobile/db/db.dart';
import 'package:skakel_mobile/models/order.dart';
import 'package:skakel_mobile/utils/extensions/orders_to_model.dart';

class OrderLocalDataSource extends BaseRepo<Order> {
  final AppDatabase _db;

  OrderLocalDataSource(this._db);

  @override
  Future<void> delete(Order entity) async {
    await _db.deleteOrder(entity.toCompanion());
  }

  @override
  Stream<Order> getById(String id) {
    return _db.watchOrder(id).toModel();
  }

  @override
  Future<Order> save(Order entity) async {
    final saved = await _db.insertOrder(
      entity.toCompanion(),
        entity.items.map((e) => e.toCompanion()),
    );
    return saved.toModel();
  }

  @override
  Stream<List<Order>> streamAll({Map<String, dynamic>? query}) {
    final results = _db.watchAllOrders(query: query);
    return results.toModel();
  }

  @override
  Future<Order?> fetchById(String id) => _db.getOrder(id).toModel();
}
