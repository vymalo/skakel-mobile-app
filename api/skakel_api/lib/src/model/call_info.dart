//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:skakel_api/src/model/user.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'call_info.g.dart';

/// CallInfo
///
/// Properties:
/// * [id] 
/// * [startTime] 
/// * [endTime] 
/// * [participants] 
/// * [callType] 
/// * [initiator] 
@BuiltValue(instantiable: false)
abstract class CallInfo  {
  @BuiltValueField(wireName: r'id')
  String? get id;

  @BuiltValueField(wireName: r'startTime')
  DateTime get startTime;

  @BuiltValueField(wireName: r'endTime')
  DateTime? get endTime;

  @BuiltValueField(wireName: r'participants')
  BuiltList<User> get participants;

  @BuiltValueField(wireName: r'callType')
  CallInfoCallTypeEnum get callType;
  // enum callTypeEnum {  Video,  Audio,  };

  @BuiltValueField(wireName: r'initiator')
  User get initiator;

  @BuiltValueSerializer(custom: true)
  static Serializer<CallInfo> get serializer => _$CallInfoSerializer();
}

class _$CallInfoSerializer implements PrimitiveSerializer<CallInfo> {
  @override
  final Iterable<Type> types = const [CallInfo];

  @override
  final String wireName = r'CallInfo';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CallInfo object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(String),
      );
    }
    yield r'startTime';
    yield serializers.serialize(
      object.startTime,
      specifiedType: const FullType(DateTime),
    );
    if (object.endTime != null) {
      yield r'endTime';
      yield serializers.serialize(
        object.endTime,
        specifiedType: const FullType(DateTime),
      );
    }
    yield r'participants';
    yield serializers.serialize(
      object.participants,
      specifiedType: const FullType(BuiltList, [FullType(User)]),
    );
    yield r'callType';
    yield serializers.serialize(
      object.callType,
      specifiedType: const FullType(CallInfoCallTypeEnum),
    );
    yield r'initiator';
    yield serializers.serialize(
      object.initiator,
      specifiedType: const FullType(User),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    CallInfo object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  @override
  CallInfo deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return serializers.deserialize(serialized, specifiedType: FullType($CallInfo)) as $CallInfo;
  }
}

/// a concrete implementation of [CallInfo], since [CallInfo] is not instantiable
@BuiltValue(instantiable: true)
abstract class $CallInfo implements CallInfo, Built<$CallInfo, $CallInfoBuilder> {
  $CallInfo._();

  factory $CallInfo([void Function($CallInfoBuilder)? updates]) = _$$CallInfo;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults($CallInfoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<$CallInfo> get serializer => _$$CallInfoSerializer();
}

class _$$CallInfoSerializer implements PrimitiveSerializer<$CallInfo> {
  @override
  final Iterable<Type> types = const [$CallInfo, _$$CallInfo];

  @override
  final String wireName = r'$CallInfo';

  @override
  Object serialize(
    Serializers serializers,
    $CallInfo object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return serializers.serialize(object, specifiedType: FullType(CallInfo))!;
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required CallInfoBuilder result,
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
        case r'startTime':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.startTime = valueDes;
          break;
        case r'endTime':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.endTime = valueDes;
          break;
        case r'participants':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(User)]),
          ) as BuiltList<User>;
          result.participants.replace(valueDes);
          break;
        case r'callType':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(CallInfoCallTypeEnum),
          ) as CallInfoCallTypeEnum;
          result.callType = valueDes;
          break;
        case r'initiator':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(User),
          ) as User;
          result.initiator.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  $CallInfo deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = $CallInfoBuilder();
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

class CallInfoCallTypeEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'Video')
  static const CallInfoCallTypeEnum video = _$callInfoCallTypeEnum_video;
  @BuiltValueEnumConst(wireName: r'Audio')
  static const CallInfoCallTypeEnum audio = _$callInfoCallTypeEnum_audio;

  static Serializer<CallInfoCallTypeEnum> get serializer => _$callInfoCallTypeEnumSerializer;

  const CallInfoCallTypeEnum._(String name): super(name);

  static BuiltSet<CallInfoCallTypeEnum> get values => _$callInfoCallTypeEnumValues;
  static CallInfoCallTypeEnum valueOf(String name) => _$callInfoCallTypeEnumValueOf(name);
}

