import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:logging/logging.dart';
import 'package:skakel_api/skakel_api.dart' show SkakelApi;
import 'package:skakel_mobile/db/base/abstract_app_repo.dart';
import 'package:skakel_mobile/db/data_sources/local/order_local_data_source.dart';
import 'package:skakel_mobile/db/data_sources/remote/order_remote_data_source.dart';
import 'package:skakel_mobile/db/db.dart';
import 'package:skakel_mobile/db/remote_api.dart';
import 'package:skakel_mobile/models/order.dart';
import 'package:skakel_mobile/services/connection_status.dart';
import 'package:skakel_mobile/utils/logging.dart';

final log = Logger('OrderRepo');

class OrderRepo extends AbstractAppRepo<Order> {
  OrderRepo(
    AppDatabase db,
    SkakelApi skakelApi,
    ConnectionStatus connectionStatus,
  ) : super(
          OrderLocalDataSource(db),
          OrderRemoteDataSource(skakelApi.getOrderApi()),
          connectionStatus,
        ) {
    log.d('OrderRepo initialized!');
  }
}

final orderRepoProvider = Provider<OrderRepo>((ref) {
  log.d('Initializing OrderRepo...');
  final db = ref.watch(dbProvider);
  final api = ref.watch(apiProvider);
  final connectionStatus = ref.watch(connectivityProvider);
  return OrderRepo(db, api, connectionStatus);
});
