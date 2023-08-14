import 'package:basic_utils/basic_utils.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:logging/logging.dart';
import 'package:skakel_mobile/services/encryption/encryption_service.dart';
import 'package:skakel_mobile/services/encryption/key_manager_service.dart';
import 'package:skakel_mobile/services/encryption/secure_key_storage.dart';
import 'package:skakel_mobile/utils/logging.dart';

final log = Logger('RSAEncryptionService');

class RSAEncryptionService extends AbstractEncryptionService {
  final KeyManagerService<RSAPublicKey> publicKeyManager;
  final KeyManagerService<RSAPrivateKey> privateKeyManager;
  late final AsymmetricKeyPair<RSAPublicKey, RSAPrivateKey> keyPair;

  static const String key = 'rsa';

  RSAEncryptionService(this.publicKeyManager, this.privateKeyManager);

  @override
  Future<String> decrypt(String data) async {
    log.d('Decrypting $data');
    return CryptoUtils.rsaDecrypt(data, keyPair.privateKey);
  }

  @override
  Future<String> encrypt(String data) async {
    log.d('Encrypting $data');
    return CryptoUtils.rsaEncrypt(data, keyPair.publicKey);
  }

  @override
  Future<String> getKey() async => key;

  @override
  Future<void> init() async {
    log.d('Initializing RSAEncryptionService');
    final key = await getKey();
    log.d('Loading RSA key pair');

    var savedPb = await publicKeyManager.get(key);
    var savedPv = await privateKeyManager.get(key);

    if (savedPv != null && savedPb != null) {
      keyPair = AsymmetricKeyPair(savedPb, savedPv);
      log.d('Loaded RSA key pair');
      return;
    }

    await _generateKeyPair();
    log.d('Generated RSA key pair');
  }

  Future<void> _generateKeyPair() async {
    log.d('Generating RSA key pair');
    final pair = CryptoUtils.generateRSAKeyPair();
    final savedPb = pair.publicKey as RSAPublicKey;
    final savedPv = pair.privateKey as RSAPrivateKey;

    log.d('Saving RSA key pair');
    await publicKeyManager.set(key, savedPb);
    await privateKeyManager.set(key, savedPv);
    keyPair = AsymmetricKeyPair(savedPb, savedPv);
    log.d('Saved RSA key pair');
  }

  @override
  Future<void> delete() async {
    log.d('Deleting RSA key pair');
    final key = await getKey();
    privateKeyManager.delete(key);
    publicKeyManager.delete(key);
    log.d('Deleted RSA key pair');
  }
}

final encryptionServiceProvider = Provider<AbstractEncryptionService>((ref) {
  final secureKeyStorage = ref.read(secureKeyStorageProvider);
  final publicKeyManager = RsaPublicKeyManagerService(secureKeyStorage);
  final privateKeyManager = RsaPrivateKeyManagerService(secureKeyStorage);
  return RSAEncryptionService(publicKeyManager, privateKeyManager);
});
