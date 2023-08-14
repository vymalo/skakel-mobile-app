import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:skakel_mobile/services/encryption/encryption_service.dart';

const keyPrefix = 'skakel_';

class SecureKeyStorage implements KeyManagerService<String> {
  final secureStorage = const FlutterSecureStorage();

  const SecureKeyStorage();

  @override
  Future<void> delete(String key) async {
    await secureStorage.delete(key: '$keyPrefix$key');
  }

  @override
  Future<String?> get(String key) async {
    return secureStorage.read(key: '$keyPrefix$key');
  }

  @override
  Future<void> set(String key, String value) async {
    await secureStorage.write(key: '$keyPrefix$key', value: value);
  }
}

final secureKeyStorageProvider = Provider((ref) => const SecureKeyStorage());
