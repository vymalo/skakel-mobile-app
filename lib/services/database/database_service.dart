import 'package:skakel_mobile/services/database/database_interface.dart';

import 'database_service_stub.dart'
  if (dart.library.html) 'database_service_web.dart'
  if (dart.library.io) 'database_service_io.dart';

DatabaseService getDatabaseService() => databaseService();