import 'package:isar/isar.dart';
import 'package:skakel_mobile/services/database/database_interface.dart';

class DatabaseServiceWeb implements DatabaseService {
  late Isar _isar;

  @override
  Future<void> init() async {
    final isar = await Isar.open(
      DatabaseService.schemas,
      directory: 'isar',
    );
    _isar = isar;
  }

  @override
  Isar get isar => _isar;
}

DatabaseService databaseService() => DatabaseServiceWeb();