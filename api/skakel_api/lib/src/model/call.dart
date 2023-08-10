//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:skakel_api/src/model/user.dart';
import 'package:skakel_api/src/model/sync_status.dart';
import 'package:skakel_api/src/model/base.dart';
import 'package:skakel_api/src/model/call_info.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'call.g.dart';

/// Call
///
/// Properties:
/// * [id] 
/// * [createdAt] 
/// * [updatedAt] 
/// * [version] 
/// * [syncStatus] 
/// * [startTime] 
/// * [endTime] 
/// * [participants] 
/// * [callType] 
/// * [initiator] 
@BuiltValue()
abstract class Call implements Base, CallInfo, Built<Call, CallBuilder> {
  Call._();

  factory Call([void updates(CallBuilder b)]) = _$Call;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CallBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<Call> get serializer => _$CallSerializer();
}

class _$CallSerializer implements PrimitiveSerializer<Call> {
  @override
  final Iterable<Type> types = const [Call, _$Call];

  @override
  final String wireName = r'Call';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Call object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.createdAt != null) {
      yield r'createdAt';
      yield serializers.serialize(
        object.createdAt,
        specifiedType: const FullType(DateTime),
      );
    }
    yield r'initiator';
    yield serializers.serialize(
      object.initiator,
      specifiedType: const FullType(User),
    );
    yield r'startTime';
    yield serializers.serialize(
      object.startTime,
      specifiedType: const FullType(DateTime),
    );
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(String),
      );
    }
    if (object.endTime != null) {
      yield r'endTime';
      yield serializers.serialize(
        object.endTime,
        specifiedType: const FullType(DateTime),
      );
    }
    if (object.version != null) {
      yield r'version';
      yield serializers.serialize(
        object.version,
        specifiedType: const FullType(int),
      );
    }
    yield r'callType';
    yield serializers.serialize(
      object.callType,
      specifiedType: const FullType(CallInfoCallTypeEnum),
    );
    if (object.syncStatus != null) {
      yield r'syncStatus';
      yield serializers.serialize(
        object.syncStatus,
        specifiedType: const FullType(SyncStatus),
      );
    }
    yield r'participants';
    yield serializers.serialize(
      object.participants,
      specifiedType: const FullType(BuiltList, [FullType(User)]),
    );
    if (object.updatedAt != null) {
      yield r'updatedAt';
      yield serializers.serialize(
        object.updatedAt,
        specifiedType: const FullType(DateTime),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    Call object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required CallBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'createdAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.createdAt = valueDes;
          break;
        case r'initiator':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(User),
          ) as User;
          result.initiator.replace(valueDes);
          break;
        case r'startTime':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.startTime = valueDes;
          break;
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.id = valueDes;
          break;
        case r'endTime':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.endTime = valueDes;
          break;
        case r'version':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.version = valueDes;
          break;
        case r'callType':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(CallInfoCallTypeEnum),
          ) as CallInfoCallTypeEnum;
          result.callType = valueDes;
          break;
        case r'syncStatus':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(SyncStatus),
          ) as SyncStatus;
          result.syncStatus = valueDes;
          break;
        case r'participants':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(User)]),
          ) as BuiltList<User>;
          result.participants.replace(valueDes);
          break;
        case r'updatedAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.updatedAt = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  Call deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CallBuilder();
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

class CallCallTypeEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'Video')
  static const CallCallTypeEnum video = _$callCallTypeEnum_video;
  @BuiltValueEnumConst(wireName: r'Audio')
  static const CallCallTypeEnum audio = _$callCallTypeEnum_audio;

  static Serializer<CallCallTypeEnum> get serializer => _$callCallTypeEnumSerializer;

  const CallCallTypeEnum._(String name): super(name);

  static BuiltSet<CallCallTypeEnum> get values => _$callCallTypeEnumValues;
  static CallCallTypeEnum valueOf(String name) => _$callCallTypeEnumValueOf(name);
}

