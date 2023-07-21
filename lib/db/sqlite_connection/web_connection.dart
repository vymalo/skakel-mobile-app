import 'package:drift/drift.dart';
import 'package:drift/wasm.dart';
import 'package:skakel_mobile/utils/logging.dart';

/// Obtains a database connection for running drift on the web.
DatabaseConnection connect() {
  return DatabaseConnection.delayed(Future(() async {
    final db = await WasmDatabase.open(
      databaseName: 'skakel-app',
      sqlite3Uri: Uri.parse('/db/sqlite3.wasm'),
      driftWorkerUri: Uri.parse('/db/drift_worker.js'),
    );

    if (db.missingFeatures.isNotEmpty) {
      log.w('Using ${db.chosenImplementation} due to unsupported '
          'browser features: ${db.missingFeatures}');
    }

    return db.resolvedExecutor;
  }));
}

Future<void> validateDatabaseSchema(GeneratedDatabase database) async {
  // Unfortunately, validating database schemas only works for native platforms
  // right now.
  // As we also have migration tests (see the `Testing migrations` section in
  // the readme of this example), this is not a huge issue.
}
