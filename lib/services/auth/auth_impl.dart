import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:logging/logging.dart';
import 'package:sentry_flutter/sentry_flutter.dart';
import 'package:skakel_mobile/services/auth/auth.dart';
import 'package:skakel_mobile/utils/logging.dart';

final log = Logger('AuthServiceImpl');

class AuthServiceImpl implements AuthService {
  @override
  Future<String?> getToken({bool refresh = false}) async {
    return null;
  }

  @override
  Future<void> login() {
    // TODO: implement login
    Sentry.configureScope(
          (scope) => scope.setUser(SentryUser(id: '1234', email: 'jane.doe@example.com')),
    );

    // TODO: implement login
    throw UnimplementedError();
  }

  @override
  Future<void> logout() {
    // TODO: implement logout
    Sentry.configureScope((scope) => scope.setUser(null));

    // TODO: implement logout
    throw UnimplementedError();
  }
}

final authServiceProvider = Provider<AuthService>((ref) {
  log.d('Initializing AuthService...');
  return AuthServiceImpl();
});
