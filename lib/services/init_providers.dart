import 'package:flutter/foundation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:skakel_mobile/db/sync_data.dart';
import 'package:skakel_mobile/services/pushy_provider.dart';
import 'package:skakel_mobile/utils/logging.dart';

final initProvider = FutureProvider((ref) async {
  log.i('Initializing providers...');
  await Future.wait([
    ref.watch(syncManagerProvider).init(),
    if (!kIsWeb) ref.watch(pushyProvider).init(),
  ]);
  log.i('Providers initialized!');
  return true;
});
