//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:skakel_api/src/model/association_member.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'association_info.g.dart';

/// AssociationInfo
///
/// Properties:
/// * [id] 
/// * [members] 
/// * [description] 
/// * [name] 
/// * [chatId] 
@BuiltValue(instantiable: false)
abstract class AssociationInfo  {
  @BuiltValueField(wireName: r'id')
  String? get id;

  @BuiltValueField(wireName: r'members')
  BuiltList<AssociationMember> get members;

  @BuiltValueField(wireName: r'description')
  String get description;

  @BuiltValueField(wireName: r'name')
  String get name;

  @BuiltValueField(wireName: r'chatId')
  String get chatId;

  @BuiltValueSerializer(custom: true)
  static Serializer<AssociationInfo> get serializer => _$AssociationInfoSerializer();
}

class _$AssociationInfoSerializer implements PrimitiveSerializer<AssociationInfo> {
  @override
  final Iterable<Type> types = const [AssociationInfo];

  @override
  final String wireName = r'AssociationInfo';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AssociationInfo object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(String),
      );
    }
    yield r'members';
    yield serializers.serialize(
      object.members,
      specifiedType: const FullType(BuiltList, [FullType(AssociationMember)]),
    );
    yield r'description';
    yield serializers.serialize(
      object.description,
      specifiedType: const FullType(String),
    );
    yield r'name';
    yield serializers.serialize(
      object.name,
      specifiedType: const FullType(String),
    );
    yield r'chatId';
    yield serializers.serialize(
      object.chatId,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    AssociationInfo object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  @override
  AssociationInfo deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return serializers.deserialize(serialized, specifiedType: FullType($AssociationInfo)) as $AssociationInfo;
  }
}

/// a concrete implementation of [AssociationInfo], since [AssociationInfo] is not instantiable
@BuiltValue(instantiable: true)
abstract class $AssociationInfo implements AssociationInfo, Built<$AssociationInfo, $AssociationInfoBuilder> {
  $AssociationInfo._();

  factory $AssociationInfo([void Function($AssociationInfoBuilder)? updates]) = _$$AssociationInfo;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults($AssociationInfoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<$AssociationInfo> get serializer => _$$AssociationInfoSerializer();
}

class _$$AssociationInfoSerializer implements PrimitiveSerializer<$AssociationInfo> {
  @override
  final Iterable<Type> types = const [$AssociationInfo, _$$AssociationInfo];

  @override
  final String wireName = r'$AssociationInfo';

  @override
  Object serialize(
    Serializers serializers,
    $AssociationInfo object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return serializers.serialize(object, specifiedType: FullType(AssociationInfo))!;
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required AssociationInfoBuilder result,
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
        case r'members':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(AssociationMember)]),
          ) as BuiltList<AssociationMember>;
          result.members.replace(valueDes);
          break;
        case r'description':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.description = valueDes;
          break;
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.name = valueDes;
          break;
        case r'chatId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.chatId = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  $AssociationInfo deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = $AssociationInfoBuilder();
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

