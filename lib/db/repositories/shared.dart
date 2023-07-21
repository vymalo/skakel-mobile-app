import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:skakel_mobile/db/base/abstract_app_repo.dart';
import 'package:skakel_mobile/db/repositories/chat_repo.dart';

export 'package:skakel_mobile/db/repositories/chat_repo.dart';

final allRepoProvider = Provider<List<AbstractAppRepo>>((ref) {
  final chatRepo = ref.read(chatRepoProvider);
  return [chatRepo];
});
