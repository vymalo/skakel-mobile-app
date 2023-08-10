//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'user_info.g.dart';

/// UserInfo
///
/// Properties:
/// * [id] 
/// * [username] 
/// * [phoneNumber] 
/// * [profilePicture] 
@BuiltValue(instantiable: false)
abstract class UserInfo  {
  @BuiltValueField(wireName: r'id')
  String? get id;

  @BuiltValueField(wireName: r'username')
  String get username;

  @BuiltValueField(wireName: r'phoneNumber')
  String? get phoneNumber;

  @BuiltValueField(wireName: r'profilePicture')
  String? get profilePicture;

  @BuiltValueSerializer(custom: true)
  static Serializer<UserInfo> get serializer => _$UserInfoSerializer();
}

class _$UserInfoSerializer implements PrimitiveSerializer<UserInfo> {
  @override
  final Iterable<Type> types = const [UserInfo];

  @override
  final String wireName = r'UserInfo';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    UserInfo object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(String),
      );
    }
    yield r'username';
    yield serializers.serialize(
      object.username,
      specifiedType: const FullType(String),
    );
    if (object.phoneNumber != null) {
      yield r'phoneNumber';
      yield serializers.serialize(
        object.phoneNumber,
        specifiedType: const FullType(String),
      );
    }
    if (object.profilePicture != null) {
      yield r'profilePicture';
      yield serializers.serialize(
        object.profilePicture,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    UserInfo object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  @override
  UserInfo deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return serializers.deserialize(serialized, specifiedType: FullType($UserInfo)) as $UserInfo;
  }
}

/// a concrete implementation of [UserInfo], since [UserInfo] is not instantiable
@BuiltValue(instantiable: true)
abstract class $UserInfo implements UserInfo, Built<$UserInfo, $UserInfoBuilder> {
  $UserInfo._();

  factory $UserInfo([void Function($UserInfoBuilder)? updates]) = _$$UserInfo;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults($UserInfoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<$UserInfo> get serializer => _$$UserInfoSerializer();
}

class _$$UserInfoSerializer implements PrimitiveSerializer<$UserInfo> {
  @override
  final Iterable<Type> types = const [$UserInfo, _$$UserInfo];

  @override
  final String wireName = r'$UserInfo';

  @override
  Object serialize(
    Serializers serializers,
    $UserInfo object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return serializers.serialize(object, specifiedType: FullType(UserInfo))!;
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required UserInfoBuilder result,
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
        case r'username':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.username = valueDes;
          break;
        case r'phoneNumber':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.phoneNumber = valueDes;
          break;
        case r'profilePicture':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.profilePicture = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  $UserInfo deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = $UserInfoBuilder();
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

