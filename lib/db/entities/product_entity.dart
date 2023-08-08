import 'package:drift/drift.dart';
import 'package:skakel_mobile/db/base/base_table.dart';
import 'package:skakel_mobile/db/entities/user_entity.dart';

@DataClassName('products')
class ProductEntity extends Table with BaseEntity {
  TextColumn get name => text().named('name')();

  TextColumn get description => text().nullable()();

  IntColumn get price => integer()();

  TextColumn get sellerId => text().references(UserEntity, #id)();

  TextColumn get content => text().nullable()();

  TextColumn get productType => text().nullable()();
}
