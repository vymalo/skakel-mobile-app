//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'blocked_user_info.g.dart';

/// BlockedUserInfo
///
/// Properties:
/// * [id] 
/// * [userSettingId] 
/// * [blockedUserId] 
@BuiltValue(instantiable: false)
abstract class BlockedUserInfo  {
  @BuiltValueField(wireName: r'id')
  String? get id;

  @BuiltValueField(wireName: r'userSettingId')
  String get userSettingId;

  @BuiltValueField(wireName: r'blockedUserId')
  String get blockedUserId;

  @BuiltValueSerializer(custom: true)
  static Serializer<BlockedUserInfo> get serializer => _$BlockedUserInfoSerializer();
}

class _$BlockedUserInfoSerializer implements PrimitiveSerializer<BlockedUserInfo> {
  @override
  final Iterable<Type> types = const [BlockedUserInfo];

  @override
  final String wireName = r'BlockedUserInfo';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    BlockedUserInfo object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(String),
      );
    }
    yield r'userSettingId';
    yield serializers.serialize(
      object.userSettingId,
      specifiedType: const FullType(String),
    );
    yield r'blockedUserId';
    yield serializers.serialize(
      object.blockedUserId,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    BlockedUserInfo object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  @override
  BlockedUserInfo deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return serializers.deserialize(serialized, specifiedType: FullType($BlockedUserInfo)) as $BlockedUserInfo;
  }
}

/// a concrete implementation of [BlockedUserInfo], since [BlockedUserInfo] is not instantiable
@BuiltValue(instantiable: true)
abstract class $BlockedUserInfo implements BlockedUserInfo, Built<$BlockedUserInfo, $BlockedUserInfoBuilder> {
  $BlockedUserInfo._();

  factory $BlockedUserInfo([void Function($BlockedUserInfoBuilder)? updates]) = _$$BlockedUserInfo;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults($BlockedUserInfoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<$BlockedUserInfo> get serializer => _$$BlockedUserInfoSerializer();
}

class _$$BlockedUserInfoSerializer implements PrimitiveSerializer<$BlockedUserInfo> {
  @override
  final Iterable<Type> types = const [$BlockedUserInfo, _$$BlockedUserInfo];

  @override
  final String wireName = r'$BlockedUserInfo';

  @override
  Object serialize(
    Serializers serializers,
    $BlockedUserInfo object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return serializers.serialize(object, specifiedType: FullType(BlockedUserInfo))!;
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required BlockedUserInfoBuilder result,
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
        case r'userSettingId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.userSettingId = valueDes;
          break;
        case r'blockedUserId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.blockedUserId = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  $BlockedUserInfo deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = $BlockedUserInfoBuilder();
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

