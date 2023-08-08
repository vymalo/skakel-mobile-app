import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:tuple/tuple.dart';

typedef AuthState = Tuple2<bool, String?>;

/// Auth service abstract class
abstract class AuthService implements StateNotifier<AuthState> {
  /// Initialize the AuthService.
  void init();

  /// Returns the current token
  Future<String?> getToken({
    bool refresh = false,
    int secondsToExpiration = 60,
  });

  /// Logs the user out
  Future<void> logout();

  /// Logs the user in
  Future<void> login();
}
