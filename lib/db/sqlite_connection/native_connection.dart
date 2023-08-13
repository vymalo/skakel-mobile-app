import 'dart:io';

import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:flutter/foundation.dart';
import 'package:logging/logging.dart';
import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart';
import 'package:drift_dev/api/migrations.dart';
import 'package:skakel_mobile/utils/logging.dart';

final log = Logger('DatabaseNativeConnection');

Future<File> get databaseFile async {
  // We use `path_provider` to find a suitable path to store our data in.
  final appDir = await getApplicationDocumentsDirectory();
  final dbPath = p.join(appDir.path, 'skakel.db');
  return File(dbPath);
}

Future<void> validateDatabaseSchema(GeneratedDatabase database) async {
  log.d('Validating database schema...');
  // This method validates that the actual schema of the opened database matches
  // the tables, views, triggers and indices for which drift_dev has generated
  // code.
  // Validating the database's schema after opening it is generally a good idea,
  // since it allows us to get an early warning if we change a table definition
  // without writing a schema migration for it.
  //
  // For details, see: https://drift.simonbinder.eu/docs/advanced-features/migrations/#verifying-a-database-schema-at-runtime
  if (kDebugMode) {
    await VerifySelf(database).validateDatabaseSchema();
  }

  log.d('Database schema validated successfully.');
}

DatabaseConnection connect() {
  log.d('Connecting to database...');
  return DatabaseConnection.delayed(Future(() async {
    // First, we need to find out where the file is located. We use the
    log.d('Opening database file...');
    return NativeDatabase.createBackgroundConnection(await databaseFile);
  }));
}
