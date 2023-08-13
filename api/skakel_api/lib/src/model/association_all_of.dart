//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:skakel_api/src/model/association_chat.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'association_all_of.g.dart';

/// AssociationAllOf
///
/// Properties:
/// * [chats] 
@BuiltValue(instantiable: false)
abstract class AssociationAllOf  {
  @BuiltValueField(wireName: r'chats')
  BuiltList<AssociationChat>? get chats;

  @BuiltValueSerializer(custom: true)
  static Serializer<AssociationAllOf> get serializer => _$AssociationAllOfSerializer();
}

class _$AssociationAllOfSerializer implements PrimitiveSerializer<AssociationAllOf> {
  @override
  final Iterable<Type> types = const [AssociationAllOf];

  @override
  final String wireName = r'AssociationAllOf';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AssociationAllOf object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.chats != null) {
      yield r'chats';
      yield serializers.serialize(
        object.chats,
        specifiedType: const FullType(BuiltList, [FullType(AssociationChat)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    AssociationAllOf object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  @override
  AssociationAllOf deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return serializers.deserialize(serialized, specifiedType: FullType($AssociationAllOf)) as $AssociationAllOf;
  }
}

/// a concrete implementation of [AssociationAllOf], since [AssociationAllOf] is not instantiable
@BuiltValue(instantiable: true)
abstract class $AssociationAllOf implements AssociationAllOf, Built<$AssociationAllOf, $AssociationAllOfBuilder> {
  $AssociationAllOf._();

  factory $AssociationAllOf([void Function($AssociationAllOfBuilder)? updates]) = _$$AssociationAllOf;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults($AssociationAllOfBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<$AssociationAllOf> get serializer => _$$AssociationAllOfSerializer();
}

class _$$AssociationAllOfSerializer implements PrimitiveSerializer<$AssociationAllOf> {
  @override
  final Iterable<Type> types = const [$AssociationAllOf, _$$AssociationAllOf];

  @override
  final String wireName = r'$AssociationAllOf';

  @override
  Object serialize(
    Serializers serializers,
    $AssociationAllOf object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return serializers.serialize(object, specifiedType: FullType(AssociationAllOf))!;
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required AssociationAllOfBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'chats':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(AssociationChat)]),
          ) as BuiltList<AssociationChat>;
          result.chats.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  $AssociationAllOf deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = $AssociationAllOfBuilder();
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

