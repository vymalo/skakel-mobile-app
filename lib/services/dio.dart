import 'package:dio_cache_interceptor/dio_cache_interceptor.dart';
import 'package:dio_smart_retry/dio_smart_retry.dart';
import 'package:flutter/foundation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:logging/logging.dart';
import 'package:sentry_dio/sentry_dio.dart';
import 'package:skakel_api/skakel_api.dart' show OAuthInterceptor;
import 'package:skakel_mobile/db/dio_cache_store.dart';
import 'package:skakel_mobile/services/dio/shared_dio.dart';
import 'package:skakel_mobile/services/encryption/encryption_service_impl.dart';
import 'package:skakel_mobile/utils/env.dart';
import 'package:skakel_mobile/utils/logging.dart';

final log = Logger('Dio');

final dioProvider = Provider((ref) {
  final encryptionService = ref.read(encryptionServiceProvider);

  // Create a new Dio instance.
  final dio = getDio();

  // Set default configs
  dio.options.baseUrl = Env.apiUrl;
  log.d('Dio initialized with base url: ${dio.options.baseUrl}');

  // Add interceptors
  dio.interceptors.add(RetryInterceptor(
    dio: dio,
    logPrint: log.d,
    retries: kDebugMode ? 1 : 3, // retry count (optional)
    retryDelays: const [
      // set delays between retries (optional)
      Duration(seconds: 1), // wait 1 sec before first retry
      if (kDebugMode) Duration(seconds: 2), // wait 2 sec before second retry
      if (kDebugMode) Duration(seconds: 3), // wait 3 sec before third retry
    ],
  ));
  log.d('Dio retry interceptor initialized');

  // TODO: Add the OAuth interceptor
  dio.interceptors.add(OAuthInterceptor());
  log.d('Dio OAuth interceptor initialized');

  getDioPath().then((databasePath) {
    final options = CacheOptions(
      // A default store is required for interceptor.
      store: DbCacheStore(),

      hitCacheOnErrorExcept: [401, 403],
      maxStale: const Duration(days: 90),
      priority: CachePriority.normal,
      cipher: CacheCipher(
        encrypt: (data) async {
          final codes = String.fromCharCodes(data);
          final r = await encryptionService.encrypt(codes);
          return r.codeUnits;
        },
        decrypt: (data) async {
          final codes = String.fromCharCodes(data);
          final r = await encryptionService.decrypt(codes);
          return r.codeUnits;
        },
      ),
      // Default. Key builder to retrieve requests.
      keyBuilder: CacheOptions.defaultCacheKeyBuilder,
      // Default. Allows to cache POST requests.
      // Overriding [keyBuilder] is strongly recommended when [true].
      allowPostMethod: false,
    );
    dio.interceptors.add(DioCacheInterceptor(options: options));
    log.d('Dio cache interceptor initialized');
  });

  // Add the sentry interceptor
  dio.addSentry();
  log.d('Dio sentry interceptor initialized');

  return dio;
});
