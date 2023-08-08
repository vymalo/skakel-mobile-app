import 'package:flutter/foundation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:logging/logging.dart';
import 'package:oauth2_client/oauth2_client.dart';
import 'package:oauth2_client/oauth2_helper.dart';
import 'package:sentry_flutter/sentry_flutter.dart';
import 'package:skakel_mobile/services/auth/auth.dart';
import 'package:skakel_mobile/utils/env.dart';
import 'package:skakel_mobile/utils/extensions/current_user_with_token.dart';
import 'package:skakel_mobile/utils/logging.dart';
import 'package:tuple/tuple.dart';

final log = Logger('AuthServiceImpl');

final redirectUri = (kIsWeb ? Uri.base : Uri.parse('skakel://oauth2redirect'));

class AuthServiceImpl extends StateNotifier<AuthState> implements AuthService {
  final _helper = OAuth2Helper(
    OAuth2Client(
      redirectUri: redirectUri.toString(),
      customUriScheme: 'skakel',
      authorizeUrl: Env.oauthAuthorizationUrl,
      tokenUrl: Env.oauthTokenUrl,
    ),
    clientId: Env.oauthClientId,
    clientSecret: Env.oauthClientSecret,
    scopes: Env.oauthScopes.split(','),
  );

  AuthServiceImpl() : super(const Tuple2(false, null));

  /// Initialize the AuthService.
  @override
  void init() async {
    log.d('Initializing AuthServiceImpl...');
    final username = (await _helper.getTokenFromStorage())?.username;

    if (username == null) {
      log.d('Not logged in');
    } else {
      log.d('Logged in as $username');
    }

    await _update();
  }

  /// Get the token from the helper.
  /// Refresh the token if [refresh] is true.
  /// Refresh if the token is expired.
  /// Return null if the token is not available.
  @override
  Future<String?> getToken({
    bool refresh = false,
    int secondsToExpiration = 60,
  }) async {
    var currentToken = await _helper.getTokenFromStorage();
    if (currentToken == null) {
      return null;
    }

    if (refresh ||
        currentToken.refreshNeeded(secondsToExpiration: secondsToExpiration)) {
      if (currentToken.hasRefreshToken()) {
        currentToken = await _helper.refreshToken(currentToken);
      } else {
        return null;
      }

      await _update();
    }

    return currentToken.accessToken;
  }

  /// Login the user.
  /// If the user is already logged in, do nothing.
  @override
  Future<void> login() async {
    final currentToken = await _helper.getToken();
    if (currentToken == null) {
      return;
    }

    await _update();
  }

  /// Logout the user.
  @override
  Future<void> logout() async {
    await _helper.removeAllTokens();
    await _update();
  }

  Future<void> _update() async {
    final currentToken = await _helper.getTokenFromStorage();
    final username = currentToken?.username;

    Sentry.configureScope(
      (scope) => currentToken != null
          ? scope.setUser(
              SentryUser(
                id: currentToken.sub,
                email: currentToken.email,
              ),
            )
          : scope.setUser(null),
    );

    state = Tuple2(currentToken != null, username);
  }
}

final authServiceProvider =
    StateNotifierProvider<AuthService, AuthState>((ref) {
  log.d('Initializing AuthService...');
  return AuthServiceImpl();
});
