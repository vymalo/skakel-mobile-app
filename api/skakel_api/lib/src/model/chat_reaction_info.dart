//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:skakel_api/src/model/reaction_type.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'chat_reaction_info.g.dart';

/// ChatReactionInfo
///
/// Properties:
/// * [id] 
/// * [userId] 
/// * [messageId] 
/// * [reactionType] 
/// * [content] 
@BuiltValue(instantiable: false)
abstract class ChatReactionInfo  {
  @BuiltValueField(wireName: r'id')
  String? get id;

  @BuiltValueField(wireName: r'userId')
  String get userId;

  @BuiltValueField(wireName: r'messageId')
  String get messageId;

  @BuiltValueField(wireName: r'reactionType')
  ReactionType get reactionType;
  // enum reactionTypeEnum {  Emoji,  };

  @BuiltValueField(wireName: r'content')
  String? get content;

  @BuiltValueSerializer(custom: true)
  static Serializer<ChatReactionInfo> get serializer => _$ChatReactionInfoSerializer();
}

class _$ChatReactionInfoSerializer implements PrimitiveSerializer<ChatReactionInfo> {
  @override
  final Iterable<Type> types = const [ChatReactionInfo];

  @override
  final String wireName = r'ChatReactionInfo';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ChatReactionInfo object, {
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
    yield r'messageId';
    yield serializers.serialize(
      object.messageId,
      specifiedType: const FullType(String),
    );
    yield r'reactionType';
    yield serializers.serialize(
      object.reactionType,
      specifiedType: const FullType(ReactionType),
    );
    if (object.content != null) {
      yield r'content';
      yield serializers.serialize(
        object.content,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ChatReactionInfo object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  @override
  ChatReactionInfo deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return serializers.deserialize(serialized, specifiedType: FullType($ChatReactionInfo)) as $ChatReactionInfo;
  }
}

/// a concrete implementation of [ChatReactionInfo], since [ChatReactionInfo] is not instantiable
@BuiltValue(instantiable: true)
abstract class $ChatReactionInfo implements ChatReactionInfo, Built<$ChatReactionInfo, $ChatReactionInfoBuilder> {
  $ChatReactionInfo._();

  factory $ChatReactionInfo([void Function($ChatReactionInfoBuilder)? updates]) = _$$ChatReactionInfo;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults($ChatReactionInfoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<$ChatReactionInfo> get serializer => _$$ChatReactionInfoSerializer();
}

class _$$ChatReactionInfoSerializer implements PrimitiveSerializer<$ChatReactionInfo> {
  @override
  final Iterable<Type> types = const [$ChatReactionInfo, _$$ChatReactionInfo];

  @override
  final String wireName = r'$ChatReactionInfo';

  @override
  Object serialize(
    Serializers serializers,
    $ChatReactionInfo object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return serializers.serialize(object, specifiedType: FullType(ChatReactionInfo))!;
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ChatReactionInfoBuilder result,
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
        case r'messageId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.messageId = valueDes;
          break;
        case r'reactionType':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(ReactionType),
          ) as ReactionType;
          result.reactionType = valueDes;
          break;
        case r'content':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.content = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  $ChatReactionInfo deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = $ChatReactionInfoBuilder();
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

