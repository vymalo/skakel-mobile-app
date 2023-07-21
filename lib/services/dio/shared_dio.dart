export 'package:skakel_mobile/services/dio/unsupported_dio.dart'
    if (dart.library.io) 'package:skakel_mobile/services/dio/native_dio.dart'
    if (dart.library.html) 'package:skakel_mobile/services/dio/web_dio.dart';