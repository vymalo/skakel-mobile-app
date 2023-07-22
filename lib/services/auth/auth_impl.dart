import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:skakel_mobile/services/auth/auth.dart';
import 'package:skakel_mobile/utils/logging.dart';

class AuthServiceImpl implements AuthService {
  @override
  Future<String?> getToken({bool refresh = false}) async {
    return null;
  }

  @override
  Future<void> login() {
    // TODO: implement login
    throw UnimplementedError();
  }

  @override
  Future<void> logout() {
    // TODO: implement logout
    throw UnimplementedError();
  }
}

final authServiceProvider = Provider<AuthService>((ref) {
  log.d('Initializing AuthService...');
  return AuthServiceImpl();
});
