//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'chat_reaction.g.dart';

/// ChatReaction
///
/// Properties:
/// * [reaction] 
@BuiltValue()
abstract class ChatReaction implements Built<ChatReaction, ChatReactionBuilder> {
  @BuiltValueField(wireName: r'reaction')
  String get reaction;

  ChatReaction._();

  factory ChatReaction([void updates(ChatReactionBuilder b)]) = _$ChatReaction;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ChatReactionBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ChatReaction> get serializer => _$ChatReactionSerializer();
}

class _$ChatReactionSerializer implements PrimitiveSerializer<ChatReaction> {
  @override
  final Iterable<Type> types = const [ChatReaction, _$ChatReaction];

  @override
  final String wireName = r'ChatReaction';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ChatReaction object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'reaction';
    yield serializers.serialize(
      object.reaction,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    ChatReaction object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ChatReactionBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'reaction':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.reaction = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ChatReaction deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ChatReactionBuilder();
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

