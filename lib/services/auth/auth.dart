/// Auth service abstract class
abstract class AuthService {
  /// Returns the current token
  Future<String?> getToken({bool refresh = false});

  /// Logs the user out
  Future<void> logout();

  /// Logs the user in
  Future<void> login();
}
