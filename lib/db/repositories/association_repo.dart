import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:logging/logging.dart';
import 'package:skakel_api/skakel_api.dart' show SkakelApi;
import 'package:skakel_mobile/db/base/abstract_app_repo.dart';
import 'package:skakel_mobile/db/data_sources/local/association_local_data_source.dart';
import 'package:skakel_mobile/db/data_sources/remote/association_remote_data_source.dart';
import 'package:skakel_mobile/db/db.dart';
import 'package:skakel_mobile/db/remote_api.dart';
import 'package:skakel_mobile/models/association.dart';
import 'package:skakel_mobile/services/connection_status.dart';
import 'package:skakel_mobile/utils/logging.dart';

final log = Logger('AssociationRepo');

class AssociationRepo extends AbstractAppRepo<Association> {
  AssociationRepo(
    AppDatabase db,
    SkakelApi skakelApi,
    ConnectionStatus connectionStatus,
  ) : super(
          AssociationLocalDataSource(db),
          AssociationRemoteDataSource(skakelApi.getAssociationApi()),
          connectionStatus,
        ) {
    log.i('AssociationRepo initialized!');
  }
}

final associationRepoProvider = Provider<AssociationRepo>((ref) {
  log.d('Initializing AssociationRepo...');
  final db = ref.watch(dbProvider);
  final api = ref.watch(apiProvider);
  final connectionStatus = ref.watch(connectivityProvider);
  return AssociationRepo(db, api, connectionStatus);
});
