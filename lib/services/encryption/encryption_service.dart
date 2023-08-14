abstract class EncryptionService {
  Future<String> encrypt(String data);

  Future<String> decrypt(String data);
}

abstract class AbstractEncryptionService implements EncryptionService {
  Future<String> getKey();

  Future<void> init();

  Future<void> delete();
}

abstract class KeyManagerService<T> {
  Future<T?> get(String key);

  Future<void> set(String key, T value);

  Future<void> delete(String key);
}
