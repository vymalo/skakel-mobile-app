import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:logging/logging.dart';
import 'package:skakel_api/skakel_api.dart' show SkakelApi;
import 'package:skakel_mobile/db/base/abstract_app_repo.dart';
import 'package:skakel_mobile/db/data_sources/local/product_local_data_source.dart';
import 'package:skakel_mobile/db/data_sources/remote/product_remote_data_source.dart';
import 'package:skakel_mobile/db/db.dart';
import 'package:skakel_mobile/db/remote_api.dart';
import 'package:skakel_mobile/models/product.dart';
import 'package:skakel_mobile/services/connection_status.dart';
import 'package:skakel_mobile/utils/logging.dart';

final log = Logger('ProductRepo');

class ProductRepo extends AbstractAppRepo<Product> {
  ProductRepo(
    AppDatabase db,
    SkakelApi skakelApi,
    ConnectionStatus connectionStatus,
  ) : super(
          ProductLocalDataSource(db),
          ProductRemoteDataSource(skakelApi.getProductApi()),
          connectionStatus,
        ) {
    log.i('ProductRepo initialized!');
  }
}

final productRepoProvider = Provider<ProductRepo>((ref) {
  log.d('Initializing ProductRepo...');
  final db = ref.watch(dbProvider);
  final api = ref.watch(apiProvider);
  final connectionStatus = ref.watch(connectivityProvider);
  return ProductRepo(db, api, connectionStatus);
});
