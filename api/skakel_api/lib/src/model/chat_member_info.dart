//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'chat_member_info.g.dart';

/// ChatMemberInfo
///
/// Properties:
/// * [id] 
/// * [userId] 
/// * [chatId] 
@BuiltValue(instantiable: false)
abstract class ChatMemberInfo  {
  @BuiltValueField(wireName: r'id')
  String? get id;

  @BuiltValueField(wireName: r'userId')
  String get userId;

  @BuiltValueField(wireName: r'chatId')
  String get chatId;

  @BuiltValueSerializer(custom: true)
  static Serializer<ChatMemberInfo> get serializer => _$ChatMemberInfoSerializer();
}

class _$ChatMemberInfoSerializer implements PrimitiveSerializer<ChatMemberInfo> {
  @override
  final Iterable<Type> types = const [ChatMemberInfo];

  @override
  final String wireName = r'ChatMemberInfo';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ChatMemberInfo object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(String),
      );
    }
    yield r'userId';
    yield serializers.serialize(
      object.userId,
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
    ChatMemberInfo object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  @override
  ChatMemberInfo deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return serializers.deserialize(serialized, specifiedType: FullType($ChatMemberInfo)) as $ChatMemberInfo;
  }
}

/// a concrete implementation of [ChatMemberInfo], since [ChatMemberInfo] is not instantiable
@BuiltValue(instantiable: true)
abstract class $ChatMemberInfo implements ChatMemberInfo, Built<$ChatMemberInfo, $ChatMemberInfoBuilder> {
  $ChatMemberInfo._();

  factory $ChatMemberInfo([void Function($ChatMemberInfoBuilder)? updates]) = _$$ChatMemberInfo;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults($ChatMemberInfoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<$ChatMemberInfo> get serializer => _$$ChatMemberInfoSerializer();
}

class _$$ChatMemberInfoSerializer implements PrimitiveSerializer<$ChatMemberInfo> {
  @override
  final Iterable<Type> types = const [$ChatMemberInfo, _$$ChatMemberInfo];

  @override
  final String wireName = r'$ChatMemberInfo';

  @override
  Object serialize(
    Serializers serializers,
    $ChatMemberInfo object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return serializers.serialize(object, specifiedType: FullType(ChatMemberInfo))!;
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ChatMemberInfoBuilder result,
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
  $ChatMemberInfo deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = $ChatMemberInfoBuilder();
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

