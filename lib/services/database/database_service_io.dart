import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';
import 'package:skakel_mobile/services/database/database_interface.dart';

class DatabaseServiceIO implements DatabaseService {
  late Isar _isar;

  @override
  Future<void> init() async {
    final dir = await getApplicationDocumentsDirectory();
    final isar = await Isar.open(
      DatabaseService.schemas,
      directory: dir.path,
    );
    _isar = isar;
  }

  @override
  Isar get isar => _isar;
}

DatabaseService databaseService() => DatabaseServiceIO();
