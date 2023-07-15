import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:isar/isar.dart';
import 'package:skakel_mobile/collections/message_entity.dart';
import 'package:skakel_mobile/services/providers/isar_provider.dart';

final messageBoxProvider = Provider.autoDispose((ref) {
  final isar = ref.watch(databaseProvider).isar;
  return isar.messageEntitys;
});

final messageStreamProvider =
    StreamProvider.autoDispose.family((ref, int chatId) async* {
  final messageBox = ref.watch(messageBoxProvider);
  yield* messageBox.filter().chatIdEqualTo(chatId).sortByTimestamp().watch();
});

final searchMessageStreamProvider =
    StreamProvider.autoDispose.family((ref, String text) async* {
  final messageBox = ref.watch(messageBoxProvider);

  yield* messageBox
      .where()
      .contentStartsWith(text)
      .sortByTimestampDesc()
      .watch();
});
