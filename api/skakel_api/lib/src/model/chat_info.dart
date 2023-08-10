//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:skakel_api/src/model/chat_member.dart';
import 'package:built_collection/built_collection.dart';
import 'package:skakel_api/src/model/chat_type.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'chat_info.g.dart';

/// ChatInfo
///
/// Properties:
/// * [name] 
/// * [members] 
/// * [chatType] 
@BuiltValue(instantiable: false)
abstract class ChatInfo  {
  @BuiltValueField(wireName: r'name')
  String get name;

  @BuiltValueField(wireName: r'members')
  BuiltList<ChatMember> get members;

  @BuiltValueField(wireName: r'chatType')
  ChatType get chatType;
  // enum chatTypeEnum {  Simple,  Group,  };

  @BuiltValueSerializer(custom: true)
  static Serializer<ChatInfo> get serializer => _$ChatInfoSerializer();
}

class _$ChatInfoSerializer implements PrimitiveSerializer<ChatInfo> {
  @override
  final Iterable<Type> types = const [ChatInfo];

  @override
  final String wireName = r'ChatInfo';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ChatInfo object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'name';
    yield serializers.serialize(
      object.name,
      specifiedType: const FullType(String),
    );
    yield r'members';
    yield serializers.serialize(
      object.members,
      specifiedType: const FullType(BuiltList, [FullType(ChatMember)]),
    );
    yield r'chatType';
    yield serializers.serialize(
      object.chatType,
      specifiedType: const FullType(ChatType),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    ChatInfo object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  @override
  ChatInfo deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return serializers.deserialize(serialized, specifiedType: FullType($ChatInfo)) as $ChatInfo;
  }
}

/// a concrete implementation of [ChatInfo], since [ChatInfo] is not instantiable
@BuiltValue(instantiable: true)
abstract class $ChatInfo implements ChatInfo, Built<$ChatInfo, $ChatInfoBuilder> {
  $ChatInfo._();

  factory $ChatInfo([void Function($ChatInfoBuilder)? updates]) = _$$ChatInfo;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults($ChatInfoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<$ChatInfo> get serializer => _$$ChatInfoSerializer();
}

class _$$ChatInfoSerializer implements PrimitiveSerializer<$ChatInfo> {
  @override
  final Iterable<Type> types = const [$ChatInfo, _$$ChatInfo];

  @override
  final String wireName = r'$ChatInfo';

  @override
  Object serialize(
    Serializers serializers,
    $ChatInfo object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return serializers.serialize(object, specifiedType: FullType(ChatInfo))!;
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ChatInfoBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.name = valueDes;
          break;
        case r'members':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(ChatMember)]),
          ) as BuiltList<ChatMember>;
          result.members.replace(valueDes);
          break;
        case r'chatType':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(ChatType),
          ) as ChatType;
          result.chatType = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  $ChatInfo deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = $ChatInfoBuilder();
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

