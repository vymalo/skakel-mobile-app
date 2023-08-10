//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:skakel_api/src/model/attachment_type.dart';
import 'package:skakel_api/src/model/chat_message.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'attachment_info.g.dart';

/// AttachmentInfo
///
/// Properties:
/// * [id] 
/// * [attachmentType] 
/// * [url] 
/// * [message] 
@BuiltValue(instantiable: false)
abstract class AttachmentInfo  {
  @BuiltValueField(wireName: r'id')
  String? get id;

  @BuiltValueField(wireName: r'attachmentType')
  AttachmentType? get attachmentType;
  // enum attachmentTypeEnum {  image,  video,  audio,  file,  location,  contact,  sticker,  link,  poll,  other,  };

  @BuiltValueField(wireName: r'url')
  String get url;

  @BuiltValueField(wireName: r'message')
  ChatMessage get message;

  @BuiltValueSerializer(custom: true)
  static Serializer<AttachmentInfo> get serializer => _$AttachmentInfoSerializer();
}

class _$AttachmentInfoSerializer implements PrimitiveSerializer<AttachmentInfo> {
  @override
  final Iterable<Type> types = const [AttachmentInfo];

  @override
  final String wireName = r'AttachmentInfo';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AttachmentInfo object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(String),
      );
    }
    if (object.attachmentType != null) {
      yield r'attachmentType';
      yield serializers.serialize(
        object.attachmentType,
        specifiedType: const FullType(AttachmentType),
      );
    }
    yield r'url';
    yield serializers.serialize(
      object.url,
      specifiedType: const FullType(String),
    );
    yield r'message';
    yield serializers.serialize(
      object.message,
      specifiedType: const FullType(ChatMessage),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    AttachmentInfo object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  @override
  AttachmentInfo deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return serializers.deserialize(serialized, specifiedType: FullType($AttachmentInfo)) as $AttachmentInfo;
  }
}

/// a concrete implementation of [AttachmentInfo], since [AttachmentInfo] is not instantiable
@BuiltValue(instantiable: true)
abstract class $AttachmentInfo implements AttachmentInfo, Built<$AttachmentInfo, $AttachmentInfoBuilder> {
  $AttachmentInfo._();

  factory $AttachmentInfo([void Function($AttachmentInfoBuilder)? updates]) = _$$AttachmentInfo;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults($AttachmentInfoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<$AttachmentInfo> get serializer => _$$AttachmentInfoSerializer();
}

class _$$AttachmentInfoSerializer implements PrimitiveSerializer<$AttachmentInfo> {
  @override
  final Iterable<Type> types = const [$AttachmentInfo, _$$AttachmentInfo];

  @override
  final String wireName = r'$AttachmentInfo';

  @override
  Object serialize(
    Serializers serializers,
    $AttachmentInfo object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return serializers.serialize(object, specifiedType: FullType(AttachmentInfo))!;
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required AttachmentInfoBuilder result,
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
        case r'attachmentType':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(AttachmentType),
          ) as AttachmentType;
          result.attachmentType = valueDes;
          break;
        case r'url':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.url = valueDes;
          break;
        case r'message':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(ChatMessage),
          ) as ChatMessage;
          result.message.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  $AttachmentInfo deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = $AttachmentInfoBuilder();
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

