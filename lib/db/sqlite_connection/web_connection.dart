import 'package:drift/drift.dart';
import 'package:drift/wasm.dart';
import 'package:logging/logging.dart';
import 'package:skakel_mobile/utils/logging.dart';

final log = Logger('DatabaseWebConnection');

/// Obtains a database connection for running drift on the web.
DatabaseConnection connect(String databaseName) {
  return DatabaseConnection.delayed(Future(() async {
    log.d('Initializing database connection...');
    final db = await WasmDatabase.open(
      databaseName: databaseName,
      sqlite3Uri: Uri.parse('/db/sqlite3.wasm'),
      driftWorkerUri: Uri.parse('/db/drift_worker.js'),
    );

    if (db.missingFeatures.isNotEmpty) {
      log.w('Using ${db.chosenImplementation} due to unsupported '
          'browser features: ${db.missingFeatures}');
    }

    log.d('Database connection initialized.');
    return db.resolvedExecutor;
  }));
}

Future<void> validateDatabaseSchema(GeneratedDatabase database) async {
  // Unfortunately, validating database schemas only works for native platforms
  // right now.
  // As we also have migration tests (see the `Testing migrations` section in
  // the readme of this example), this is not a huge issue.
  log.w('Cannot validate database schema on web.');
}
