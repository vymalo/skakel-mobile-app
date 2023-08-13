import 'dart:async';

import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:logging/logging.dart';
import 'package:meta/meta.dart';
import 'package:skakel_mobile/services/auth/auth.dart';
import 'package:skakel_mobile/utils/logging.dart';

final log = Logger('AuthAutoRefreshService');

abstract class AbstractAuthAutoRefreshService extends StateNotifier<AuthState>
    implements AuthService {
  Timer? _tokenRefreshTimer;
  int _secondsToExpiration = secondsToExpirationDefault;
  static const secondsToExpirationDefault = 60;

  AbstractAuthAutoRefreshService(super.state);

  @protected
  Future<void> simpleInit();

  @override
  void init() async {
    await simpleInit();
    _startTokenRefreshTimer();
  }

  void _startTokenRefreshTimer() {
    log.d('Starting token refresh timer...');
    _tokenRefreshTimer = Timer.periodic(
      Duration(seconds: _secondsToExpiration),
      (timer) async {
        log.d('Refreshing token...');
        final result = await getToken(refresh: true);
        if (result == null) {
          log.d('Token refresh failed!');
          return;
        }
        _secondsToExpiration = result.expiresIn! - 60;
        log.d('Token refreshed!');
        _stopTokenRefreshTimer();
        _startTokenRefreshTimer();
      },
    );
    log.d('Token refresh timer started!');
  }

  void _stopTokenRefreshTimer() {
    log.d('Stopping token refresh timer...');
    _tokenRefreshTimer?.cancel();
    log.d('Token refresh timer stopped!');
  }

  @override
  void dispose() {
    _stopTokenRefreshTimer();
    super.dispose();
  }
}
