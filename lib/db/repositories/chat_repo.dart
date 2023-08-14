import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:logging/logging.dart';
import 'package:skakel_api/skakel_api.dart' show SkakelApi;
import 'package:skakel_mobile/db/base/abstract_app_repo.dart';
import 'package:skakel_mobile/db/data_sources/local/chat_local_data_source.dart';
import 'package:skakel_mobile/db/data_sources/remote/chat_remote_data_source.dart';
import 'package:skakel_mobile/db/db.dart';
import 'package:skakel_mobile/db/remote_api.dart';
import 'package:skakel_mobile/models/chat.dart';
import 'package:skakel_mobile/services/connection_status.dart';
import 'package:skakel_mobile/utils/logging.dart';

final log = Logger('ChatRepo');

class ChatRepo extends AbstractAppRepo<Chat> {
  ChatRepo(
    AppDatabase db,
    SkakelApi skakelApi,
    ConnectionStatus connectionStatus,
  ) : super(
          ChatLocalDataSource(db),
          ChatRemoteDataSource(skakelApi.getChatApi()),
          connectionStatus,
        ) {
    log.i('ChatRepo initialized!');
  }
}

final chatRepoProvider = Provider<ChatRepo>((ref) {
  log.d('Initializing ChatRepo...');
  final db = ref.watch(dbProvider);
  final api = ref.watch(apiProvider);
  final connectionStatus = ref.watch(connectivityProvider);
  return ChatRepo(db, api, connectionStatus);
});
