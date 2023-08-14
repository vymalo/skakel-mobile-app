import 'package:flutter/foundation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:logging/logging.dart';
import 'package:pushy_flutter/pushy_flutter.dart';
import 'package:skakel_mobile/utils/env.dart';
import 'package:skakel_mobile/utils/logging.dart';

final log = Logger('PushyProvider');

class PushyProvider {
  /// This method is used to initialize Pushy.
  void init() async {
    // Start the Pushy service
    Pushy.listen();

    if (kIsWeb) {
      // Set Pushy App ID (required for Web Push)
      Pushy.setAppId(Env.pushyWebAppId);
    }

    // Register the user for push notifications
    _pushyRegister();

    // Set the background notification callback handler
    Pushy.setNotificationListener(backgroundNotificationListener);
  }

  /// This method is used to register the user for push notifications.
  Future _pushyRegister() async {
    // Register the user for push notifications
    String deviceToken = await Pushy.register();

    // Print token to console/logcat
    log.i('Device token: $deviceToken');
  }
}

@pragma('vm:entry-point')
void backgroundNotificationListener(Map<String, dynamic> data) async {
  // Print notification payload data
  log.i('Received notification: $data');

  // Notification title
  String notificationTitle = 'MyApp';

  // Attempt to extract the "message" property from the payload: {"message":"Hello World!"}
  String notificationText = data['message'] ?? 'Hello World!';

  // Android: Displays a system notification
  // iOS: Displays an alert dialog
  Pushy.notify(notificationTitle, notificationText, data);

  // Clear iOS app badge number
  Pushy.clearBadge();
}

final pushyProvider = Provider((ref) {
  return PushyProvider();
});
