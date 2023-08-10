//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'association_role.g.dart';

class AssociationRole extends EnumClass {

  @BuiltValueEnumConst(wireName: r'Admin')
  static const AssociationRole admin = _$admin;
  @BuiltValueEnumConst(wireName: r'Member')
  static const AssociationRole member = _$member;

  static Serializer<AssociationRole> get serializer => _$associationRoleSerializer;

  const AssociationRole._(String name): super(name);

  static BuiltSet<AssociationRole> get values => _$values;
  static AssociationRole valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class AssociationRoleMixin = Object with _$AssociationRoleMixin;

