//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'add_reaction_to_chat_message_request.g.dart';

/// AddReactionToChatMessageRequest
///
/// Properties:
/// * [reaction] 
@BuiltValue()
abstract class AddReactionToChatMessageRequest implements Built<AddReactionToChatMessageRequest, AddReactionToChatMessageRequestBuilder> {
  @BuiltValueField(wireName: r'reaction')
  String get reaction;

  AddReactionToChatMessageRequest._();

  factory AddReactionToChatMessageRequest([void updates(AddReactionToChatMessageRequestBuilder b)]) = _$AddReactionToChatMessageRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AddReactionToChatMessageRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AddReactionToChatMessageRequest> get serializer => _$AddReactionToChatMessageRequestSerializer();
}

class _$AddReactionToChatMessageRequestSerializer implements PrimitiveSerializer<AddReactionToChatMessageRequest> {
  @override
  final Iterable<Type> types = const [AddReactionToChatMessageRequest, _$AddReactionToChatMessageRequest];

  @override
  final String wireName = r'AddReactionToChatMessageRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AddReactionToChatMessageRequest object, {
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
    AddReactionToChatMessageRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required AddReactionToChatMessageRequestBuilder result,
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
  AddReactionToChatMessageRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AddReactionToChatMessageRequestBuilder();
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

