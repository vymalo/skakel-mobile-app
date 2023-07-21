import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:skakel_api/skakel_api.dart' as api;
import 'package:skakel_mobile/db/base/abstract_app_repo.dart';
import 'package:skakel_mobile/db/data_sources/local/chat_local_data_source.dart';
import 'package:skakel_mobile/db/data_sources/remote/chat_remote_data_source.dart';
import 'package:skakel_mobile/db/db.dart';
import 'package:skakel_mobile/db/models/chat.dart';
import 'package:skakel_mobile/db/remote_api.dart';
import 'package:skakel_mobile/services/connection_status.dart';

class ChatRepo extends AbstractAppRepo<Chat> {
  ChatRepo(
    AppDatabase db,
    api.SkakelApi skakelApi,
    ConnectionStatus connectionStatus,
  ) : super(
          ChatLocalDataSource(db),
          ChatRemoteDataSource(skakelApi.getChatApi()),
          connectionStatus,
        );
}

final chatRepoProvider = Provider<ChatRepo>((ref) {
  final db = ref.watch(dbProvider);
  final api = ref.watch(apiProvider);
  final connectionStatus = ref.watch(connectivityProvider);
  return ChatRepo(db, api, connectionStatus);
});