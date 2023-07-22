abstract class AuthService {
  Future<String?> getToken({bool refresh = false});

  Future<void> logout();

  Future<void> login();
}
