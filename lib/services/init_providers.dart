import 'package:flutter/foundation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:logging/logging.dart';
import 'package:skakel_mobile/db/sync_data.dart';
import 'package:skakel_mobile/services/connection_status.dart';
import 'package:skakel_mobile/services/mqtt/mqtt_manager.dart';
import 'package:skakel_mobile/services/pushy_provider.dart';
import 'package:skakel_mobile/utils/logging.dart';

final log = Logger('InitProviders');

final initProvider = FutureProvider((ref) async {
  log.d('Initializing providers...');
  ref.watch(connectivityProvider).init();
  ref.watch(syncManagerProvider).init();
  ref.watch(mqttManagerProvider).init();
  ref.watch(pushyProvider).init();
  log.i('Providers initialized!');
  return true;
});
