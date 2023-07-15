import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:skakel_mobile/services/database/database_interface.dart';
import 'package:skakel_mobile/services/database/database_service.dart';

final databaseProvider = Provider<DatabaseService>(
  (ref) => getDatabaseService(),
);
