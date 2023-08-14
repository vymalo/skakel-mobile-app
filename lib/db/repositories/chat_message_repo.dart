import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:logging/logging.dart';
import 'package:skakel_api/skakel_api.dart' show SkakelApi;
import 'package:skakel_mobile/db/base/abstract_app_repo.dart';
import 'package:skakel_mobile/db/data_sources/local/chat_message_local_data_source.dart';
import 'package:skakel_mobile/db/data_sources/remote/chat_message_remote_data_source.dart';
import 'package:skakel_mobile/db/db.dart';
import 'package:skakel_mobile/db/remote_api.dart';
import 'package:skakel_mobile/models/chat_message.dart';
import 'package:skakel_mobile/services/connection_status.dart';
import 'package:skakel_mobile/utils/logging.dart';

final log = Logger('ChatMessageRepo');

class ChatMessageRepo extends AbstractAppRepo<ChatMessage> {
  ChatMessageRepo(
    AppDatabase db,
    SkakelApi skakelApi,
    ConnectionStatus connectionStatus,
  ) : super(
          ChatMessageLocalDataSource(db),
          ChatMessageRemoteDataSource(skakelApi.getChatMessageApi()),
          connectionStatus,
        ) {
    log.i('ChatMessageRepo initialized!');
  }
}

final chatMessagesRepoProvider = Provider<ChatMessageRepo>((ref) {
  log.d('Initializing ChatMessageRepo...');
  final db = ref.watch(dbProvider);
  final api = ref.watch(apiProvider);
  final connectionStatus = ref.watch(connectivityProvider);
  return ChatMessageRepo(db, api, connectionStatus);
});
