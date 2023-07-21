import 'package:cookie_jar/cookie_jar.dart';
import 'package:dio/dio.dart';
import 'package:dio_cookie_manager/dio_cookie_manager.dart';
import 'package:native_dio_adapter/native_dio_adapter.dart';

Dio getDio() {
  final dio = Dio();

  final cookieJar = CookieJar();
  dio.interceptors.add(CookieManager(cookieJar));
  dio.httpClientAdapter = NativeAdapter();

  return dio;
}
