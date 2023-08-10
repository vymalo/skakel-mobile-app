import 'package:drift/drift.dart';
import 'package:skakel_mobile/db/base/base_table.dart';
import 'package:skakel_mobile/db/entities/association_entity.dart';
import 'package:skakel_mobile/db/entities/user_entity.dart';
import 'package:skakel_mobile/models/association_role.dart';

@DataClassName('association_members')
class AssociationMemberEntity extends Table with BaseEntity {
  TextColumn get userId => text().references(UserEntity, #id)();

  TextColumn get associationId => text().references(AssociationEntity, #id)();

  TextColumn get role => textEnum<AssociationRole>()();
}
