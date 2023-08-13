import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:oauth2_client/access_token_response.dart';

part 'auth.freezed.dart';

@freezed
class AuthState with _$AuthState {
  const AuthState._();

  const factory AuthState.token({
    required AccessTokenResponse token,
  }) = _AuthStateWithToken;

  const factory AuthState.out() = _AuthStateWithtoutToken;

  bool get isLoggedIn => when(
        token: (_) => true,
        out: () => false,
      );
}

/// Auth service abstract class
abstract class AuthService implements StateNotifier<AuthState> {
  /// Initialize the AuthService.
  void init();

  /// Returns the current token
  Future<AccessTokenResponse?> getToken({
    bool refresh = false,
    int secondsToExpiration = 60,
  });

  /// Logs the user out
  Future<void> logout();

  /// Logs the user in
  Future<void> login();
}
