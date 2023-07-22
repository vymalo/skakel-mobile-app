import 'package:dio_smart_retry/dio_smart_retry.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:skakel_mobile/services/dio/shared_dio.dart';
import 'package:skakel_mobile/utils/logging.dart';

final dioProvider = Provider((ref) {
  final dio = getDio();

  dio.options.baseUrl = "https://skakel-api.herokuapp.com/";

  dio.interceptors.add(RetryInterceptor(
    dio: dio,
    logPrint: log.d,
    retries: 3, // retry count (optional)
    retryDelays: const [
      // set delays between retries (optional)
      Duration(seconds: 1), // wait 1 sec before first retry
      Duration(seconds: 2), // wait 2 sec before second retry
      Duration(seconds: 3), // wait 3 sec before third retry
    ],
  ));

  return dio;
});
