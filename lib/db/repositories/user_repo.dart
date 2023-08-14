import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:logging/logging.dart';
import 'package:skakel_api/skakel_api.dart' show SkakelApi;
import 'package:skakel_mobile/db/base/abstract_app_repo.dart';
import 'package:skakel_mobile/db/data_sources/local/user_local_data_source.dart';
import 'package:skakel_mobile/db/data_sources/remote/user_remote_data_source.dart';
import 'package:skakel_mobile/db/db.dart';
import 'package:skakel_mobile/db/remote_api.dart';
import 'package:skakel_mobile/models/user.dart';
import 'package:skakel_mobile/services/connection_status.dart';
import 'package:skakel_mobile/utils/logging.dart';

final log = Logger('UserRepo');

class UserRepo extends AbstractAppRepo<User> {
  UserRepo(
    AppDatabase db,
    SkakelApi skakelApi,
    ConnectionStatus connectionStatus,
  ) : super(
          UserLocalDataSource(db),
          UserRemoteDataSource(skakelApi.getUserApi()),
          connectionStatus,
        ) {
    log.i('UserRepo initialized!');
  }
}

final userRepoProvider = Provider<UserRepo>((ref) {
  log.d('Initializing UserRepo...');
  final db = ref.watch(dbProvider);
  final api = ref.watch(apiProvider);
  final connectionStatus = ref.watch(connectivityProvider);
  return UserRepo(db, api, connectionStatus);
});
