import 'package:isar/isar.dart';
import 'package:skakel_mobile/collections/contact_entity.dart';

abstract class DatabaseService {
  Future<void> init();

  Isar get isar;

  static List<CollectionSchema<dynamic>> get schemas => [
        ContactEntitySchema,
      ];
}
