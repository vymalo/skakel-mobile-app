//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:skakel_api/src/model/chat_reaction.dart';
import 'package:built_collection/built_collection.dart';
import 'package:skakel_api/src/model/attachment.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'chat_message_info.g.dart';

/// ChatMessageInfo
///
/// Properties:
/// * [id] 
/// * [content] 
/// * [authorId] 
/// * [chatId] 
/// * [attachments] 
/// * [reactions] 
@BuiltValue(instantiable: false)
abstract class ChatMessageInfo  {
  @BuiltValueField(wireName: r'id')
  String? get id;

  @BuiltValueField(wireName: r'content')
  String get content;

  @BuiltValueField(wireName: r'authorId')
  String get authorId;

  @BuiltValueField(wireName: r'chatId')
  String get chatId;

  @BuiltValueField(wireName: r'attachments')
  BuiltList<Attachment>? get attachments;

  @BuiltValueField(wireName: r'reactions')
  BuiltList<ChatReaction>? get reactions;

  @BuiltValueSerializer(custom: true)
  static Serializer<ChatMessageInfo> get serializer => _$ChatMessageInfoSerializer();
}

class _$ChatMessageInfoSerializer implements PrimitiveSerializer<ChatMessageInfo> {
  @override
  final Iterable<Type> types = const [ChatMessageInfo];

  @override
  final String wireName = r'ChatMessageInfo';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ChatMessageInfo object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(String),
      );
    }
    yield r'content';
    yield serializers.serialize(
      object.content,
      specifiedType: const FullType(String),
    );
    yield r'authorId';
    yield serializers.serialize(
      object.authorId,
      specifiedType: const FullType(String),
    );
    yield r'chatId';
    yield serializers.serialize(
      object.chatId,
      specifiedType: const FullType(String),
    );
    if (object.attachments != null) {
      yield r'attachments';
      yield serializers.serialize(
        object.attachments,
        specifiedType: const FullType(BuiltList, [FullType(Attachment)]),
      );
    }
    if (object.reactions != null) {
      yield r'reactions';
      yield serializers.serialize(
        object.reactions,
        specifiedType: const FullType(BuiltList, [FullType(ChatReaction)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ChatMessageInfo object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  @override
  ChatMessageInfo deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return serializers.deserialize(serialized, specifiedType: FullType($ChatMessageInfo)) as $ChatMessageInfo;
  }
}

/// a concrete implementation of [ChatMessageInfo], since [ChatMessageInfo] is not instantiable
@BuiltValue(instantiable: true)
abstract class $ChatMessageInfo implements ChatMessageInfo, Built<$ChatMessageInfo, $ChatMessageInfoBuilder> {
  $ChatMessageInfo._();

  factory $ChatMessageInfo([void Function($ChatMessageInfoBuilder)? updates]) = _$$ChatMessageInfo;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults($ChatMessageInfoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<$ChatMessageInfo> get serializer => _$$ChatMessageInfoSerializer();
}

class _$$ChatMessageInfoSerializer implements PrimitiveSerializer<$ChatMessageInfo> {
  @override
  final Iterable<Type> types = const [$ChatMessageInfo, _$$ChatMessageInfo];

  @override
  final String wireName = r'$ChatMessageInfo';

  @override
  Object serialize(
    Serializers serializers,
    $ChatMessageInfo object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return serializers.serialize(object, specifiedType: FullType(ChatMessageInfo))!;
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ChatMessageInfoBuilder result,
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
        case r'content':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.content = valueDes;
          break;
        case r'authorId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.authorId = valueDes;
          break;
        case r'chatId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.chatId = valueDes;
          break;
        case r'attachments':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(Attachment)]),
          ) as BuiltList<Attachment>;
          result.attachments.replace(valueDes);
          break;
        case r'reactions':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(ChatReaction)]),
          ) as BuiltList<ChatReaction>;
          result.reactions.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  $ChatMessageInfo deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = $ChatMessageInfoBuilder();
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

