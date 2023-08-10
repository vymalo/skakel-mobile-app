//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:skakel_api/src/model/association_role.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'association_member.g.dart';

/// AssociationMember
///
/// Properties:
/// * [id] 
/// * [userId] 
/// * [associationId] 
/// * [role] 
@BuiltValue()
abstract class AssociationMember implements Built<AssociationMember, AssociationMemberBuilder> {
  @BuiltValueField(wireName: r'id')
  String? get id;

  @BuiltValueField(wireName: r'userId')
  String? get userId;

  @BuiltValueField(wireName: r'associationId')
  String? get associationId;

  @BuiltValueField(wireName: r'role')
  AssociationRole? get role;
  // enum roleEnum {  Admin,  Member,  };

  AssociationMember._();

  factory AssociationMember([void updates(AssociationMemberBuilder b)]) = _$AssociationMember;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AssociationMemberBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AssociationMember> get serializer => _$AssociationMemberSerializer();
}

class _$AssociationMemberSerializer implements PrimitiveSerializer<AssociationMember> {
  @override
  final Iterable<Type> types = const [AssociationMember, _$AssociationMember];

  @override
  final String wireName = r'AssociationMember';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AssociationMember object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(String),
      );
    }
    if (object.userId != null) {
      yield r'userId';
      yield serializers.serialize(
        object.userId,
        specifiedType: const FullType(String),
      );
    }
    if (object.associationId != null) {
      yield r'associationId';
      yield serializers.serialize(
        object.associationId,
        specifiedType: const FullType(String),
      );
    }
    if (object.role != null) {
      yield r'role';
      yield serializers.serialize(
        object.role,
        specifiedType: const FullType(AssociationRole),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    AssociationMember object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required AssociationMemberBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.id = valueDes;
          break;
        case r'userId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.userId = valueDes;
          break;
        case r'associationId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.associationId = valueDes;
          break;
        case r'role':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(AssociationRole),
          ) as AssociationRole;
          result.role = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  AssociationMember deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AssociationMemberBuilder();
    final serializedList = (serialized as Iterable<Object?>).toList();
    final unhandled = <Object?>[];
    _deserializeProperties(
      serializers,
      serialized,
      specifiedType: specifiedType,
      serializedList: serializedList,
      unhandled: unhandled,
      result: result,
    );
    return result.build();
  }
}

