import 'package:basic_utils/basic_utils.dart';
import 'package:skakel_mobile/services/encryption/encryption_service.dart';
import 'package:skakel_mobile/services/encryption/secure_key_storage.dart';

class RsaPrivateKeyManagerService implements KeyManagerService<RSAPrivateKey> {
  final SecureKeyStorage scs;
  static const String keyPrefix = 'skakel_rsa_private_';

  RsaPrivateKeyManagerService(this.scs);

  @override
  Future<void> delete(String key) {
    return scs.delete('$keyPrefix$key');
  }

  @override
  Future<RSAPrivateKey?> get(String key) async {
    final value = await scs.get('$keyPrefix$key');
    if (value == null) return null;
    return CryptoUtils.rsaPrivateKeyFromPem(value);
  }

  @override
  Future<void> set(String key, RSAPrivateKey value) async {
    final l = CryptoUtils.encodeRSAPrivateKeyToPem(value);
    await scs.set('$keyPrefix$key', l);
  }
}

class RsaPublicKeyManagerService implements KeyManagerService<RSAPublicKey> {
  final SecureKeyStorage scs;
  static const String keyPrefix = 'skakel_rsa_public_';

  RsaPublicKeyManagerService(this.scs);

  @override
  Future<void> delete(String key) async {
    await scs.delete('$keyPrefix$key');
  }

  @override
  Future<RSAPublicKey?> get(String key) async {
    final value = await scs.get('$keyPrefix$key');
    if (value == null) return null;
    return CryptoUtils.rsaPublicKeyFromPem(value);
  }

  @override
  Future<void> set(String key, RSAPublicKey value) async {
    final k = CryptoUtils.encodeRSAPublicKeyToPem(value);
    await scs.set('$keyPrefix$key', k);
  }
}
