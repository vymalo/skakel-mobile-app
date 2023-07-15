import 'package:isar/isar.dart';

part 'contact_entity.g.dart';

@collection
@Name("contacts")
class ContactEntity {
  Id id = Isar.autoIncrement;

  DateTime? createdAt;

  @Index(type: IndexType.value)
  @Name("first_name")
  String? firstName;

  @Index(type: IndexType.value)
  @Name("last_name")
  String? lastName;
}
