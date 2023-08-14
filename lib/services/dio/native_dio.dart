import 'package:cookie_jar/cookie_jar.dart';
import 'package:dio/dio.dart';
import 'package:dio_cookie_manager/dio_cookie_manager.dart';
import 'package:native_dio_adapter/native_dio_adapter.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart' as p;

Future<String> getDioPath() async {
  final d = await getApplicationDocumentsDirectory();
  return p.join(d.path, 'skakel_dio.db');
}

Dio getDio() {
  final dio = Dio();

  final cookieJar = CookieJar();
  dio.interceptors.add(CookieManager(cookieJar));
  dio.httpClientAdapter = NativeAdapter();

  return dio;
}
