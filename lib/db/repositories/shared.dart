import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:skakel_mobile/db/base/abstract_app_repo.dart';
import 'package:skakel_mobile/db/repositories/association_repo.dart';
import 'package:skakel_mobile/db/repositories/chat_message_repo.dart';
import 'package:skakel_mobile/db/repositories/chat_repo.dart';
import 'package:skakel_mobile/db/repositories/order_repo.dart';
import 'package:skakel_mobile/db/repositories/product_repo.dart';
import 'package:skakel_mobile/db/repositories/user_repo.dart';

export 'package:skakel_mobile/db/repositories/chat_repo.dart';

final allRepoProvider = Provider<List<AbstractAppRepo>>((ref) {
  final associationRepo = ref.read(associationRepoProvider);
  final chatRepo = ref.read(chatRepoProvider);
  final userRepo = ref.read(userRepoProvider);
  final productRepo = ref.read(productRepoProvider);
  final chatMessagesRepo = ref.read(chatMessagesRepoProvider);
  final orderRepo = ref.read(orderRepoProvider);
  return [
    associationRepo,
    orderRepo,
    productRepo,
    userRepo,
    chatRepo,
    chatMessagesRepo
  ];
});
