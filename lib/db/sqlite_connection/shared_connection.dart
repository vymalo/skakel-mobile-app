export 'package:skakel_mobile/db/sqlite_connection/unsupported_connection.dart'
    if (dart.library.ffi) 'package:skakel_mobile/db/sqlite_connection/native_connection.dart'
    if (dart.library.html) 'package:skakel_mobile/db/sqlite_connection/web_connection.dart';
