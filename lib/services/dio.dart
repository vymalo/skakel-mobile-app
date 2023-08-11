import 'package:dio_smart_retry/dio_smart_retry.dart';
import 'package:flutter/foundation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:logging/logging.dart';
import 'package:sentry_dio/sentry_dio.dart';
import 'package:skakel_mobile/services/dio/shared_dio.dart';
import 'package:skakel_mobile/utils/env.dart';
import 'package:skakel_mobile/utils/logging.dart';

final log = Logger('Dio');

final dioProvider = Provider((ref) {
  // Create a new Dio instance.
  final dio = getDio();

  // Set default configs
  dio.options.baseUrl = Env.apiUrl;

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

  // Add the sentry interceptor
  dio.addSentry();

  return dio;
});
