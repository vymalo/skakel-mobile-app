//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:skakel_api/src/model/association_role.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'association_member_info.g.dart';

/// AssociationMemberInfo
///
/// Properties:
/// * [id] 
/// * [userId] 
/// * [associationId] 
/// * [role] 
@BuiltValue(instantiable: false)
abstract class AssociationMemberInfo  {
  @BuiltValueField(wireName: r'id')
  String? get id;

  @BuiltValueField(wireName: r'userId')
  String? get userId;

  @BuiltValueField(wireName: r'associationId')
  String? get associationId;

  @BuiltValueField(wireName: r'role')
  AssociationRole? get role;
  // enum roleEnum {  Admin,  Member,  };

  @BuiltValueSerializer(custom: true)
  static Serializer<AssociationMemberInfo> get serializer => _$AssociationMemberInfoSerializer();
}

class _$AssociationMemberInfoSerializer implements PrimitiveSerializer<AssociationMemberInfo> {
  @override
  final Iterable<Type> types = const [AssociationMemberInfo];

  @override
  final String wireName = r'AssociationMemberInfo';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AssociationMemberInfo object, {
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
    AssociationMemberInfo object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  @override
  AssociationMemberInfo deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return serializers.deserialize(serialized, specifiedType: FullType($AssociationMemberInfo)) as $AssociationMemberInfo;
  }
}

/// a concrete implementation of [AssociationMemberInfo], since [AssociationMemberInfo] is not instantiable
@BuiltValue(instantiable: true)
abstract class $AssociationMemberInfo implements AssociationMemberInfo, Built<$AssociationMemberInfo, $AssociationMemberInfoBuilder> {
  $AssociationMemberInfo._();

  factory $AssociationMemberInfo([void Function($AssociationMemberInfoBuilder)? updates]) = _$$AssociationMemberInfo;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults($AssociationMemberInfoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<$AssociationMemberInfo> get serializer => _$$AssociationMemberInfoSerializer();
}

class _$$AssociationMemberInfoSerializer implements PrimitiveSerializer<$AssociationMemberInfo> {
  @override
  final Iterable<Type> types = const [$AssociationMemberInfo, _$$AssociationMemberInfo];

  @override
  final String wireName = r'$AssociationMemberInfo';

  @override
  Object serialize(
    Serializers serializers,
    $AssociationMemberInfo object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return serializers.serialize(object, specifiedType: FullType(AssociationMemberInfo))!;
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required AssociationMemberInfoBuilder result,
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
  $AssociationMemberInfo deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = $AssociationMemberInfoBuilder();
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

