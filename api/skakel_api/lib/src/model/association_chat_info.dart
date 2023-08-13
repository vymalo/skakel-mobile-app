//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'association_chat_info.g.dart';

/// AssociationChatInfo
///
/// Properties:
/// * [id] 
/// * [associationId] 
/// * [chatId] 
@BuiltValue(instantiable: false)
abstract class AssociationChatInfo  {
  @BuiltValueField(wireName: r'id')
  String? get id;

  @BuiltValueField(wireName: r'associationId')
  String get associationId;

  @BuiltValueField(wireName: r'chatId')
  String get chatId;

  @BuiltValueSerializer(custom: true)
  static Serializer<AssociationChatInfo> get serializer => _$AssociationChatInfoSerializer();
}

class _$AssociationChatInfoSerializer implements PrimitiveSerializer<AssociationChatInfo> {
  @override
  final Iterable<Type> types = const [AssociationChatInfo];

  @override
  final String wireName = r'AssociationChatInfo';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AssociationChatInfo object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(String),
      );
    }
    yield r'associationId';
    yield serializers.serialize(
      object.associationId,
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
    AssociationChatInfo object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  @override
  AssociationChatInfo deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return serializers.deserialize(serialized, specifiedType: FullType($AssociationChatInfo)) as $AssociationChatInfo;
  }
}

/// a concrete implementation of [AssociationChatInfo], since [AssociationChatInfo] is not instantiable
@BuiltValue(instantiable: true)
abstract class $AssociationChatInfo implements AssociationChatInfo, Built<$AssociationChatInfo, $AssociationChatInfoBuilder> {
  $AssociationChatInfo._();

  factory $AssociationChatInfo([void Function($AssociationChatInfoBuilder)? updates]) = _$$AssociationChatInfo;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults($AssociationChatInfoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<$AssociationChatInfo> get serializer => _$$AssociationChatInfoSerializer();
}

class _$$AssociationChatInfoSerializer implements PrimitiveSerializer<$AssociationChatInfo> {
  @override
  final Iterable<Type> types = const [$AssociationChatInfo, _$$AssociationChatInfo];

  @override
  final String wireName = r'$AssociationChatInfo';

  @override
  Object serialize(
    Serializers serializers,
    $AssociationChatInfo object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return serializers.serialize(object, specifiedType: FullType(AssociationChatInfo))!;
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required AssociationChatInfoBuilder result,
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
        case r'associationId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.associationId = valueDes;
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
  $AssociationChatInfo deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = $AssociationChatInfoBuilder();
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

