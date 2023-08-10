//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:skakel_api/src/model/user.dart';
import 'package:skakel_api/src/model/blocked_user.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'user_settings_info.g.dart';

/// UserSettingsInfo
///
/// Properties:
/// * [id] 
/// * [user] 
/// * [language] 
/// * [theme] 
/// * [notifications] 
/// * [blockedUsers] 
@BuiltValue(instantiable: false)
abstract class UserSettingsInfo  {
  @BuiltValueField(wireName: r'id')
  String? get id;

  @BuiltValueField(wireName: r'user')
  User get user;

  @BuiltValueField(wireName: r'language')
  String? get language;

  @BuiltValueField(wireName: r'theme')
  String? get theme;

  @BuiltValueField(wireName: r'notifications')
  bool? get notifications;

  @BuiltValueField(wireName: r'blockedUsers')
  BuiltList<BlockedUser>? get blockedUsers;

  @BuiltValueSerializer(custom: true)
  static Serializer<UserSettingsInfo> get serializer => _$UserSettingsInfoSerializer();
}

class _$UserSettingsInfoSerializer implements PrimitiveSerializer<UserSettingsInfo> {
  @override
  final Iterable<Type> types = const [UserSettingsInfo];

  @override
  final String wireName = r'UserSettingsInfo';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    UserSettingsInfo object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(String),
      );
    }
    yield r'user';
    yield serializers.serialize(
      object.user,
      specifiedType: const FullType(User),
    );
    if (object.language != null) {
      yield r'language';
      yield serializers.serialize(
        object.language,
        specifiedType: const FullType(String),
      );
    }
    if (object.theme != null) {
      yield r'theme';
      yield serializers.serialize(
        object.theme,
        specifiedType: const FullType(String),
      );
    }
    if (object.notifications != null) {
      yield r'notifications';
      yield serializers.serialize(
        object.notifications,
        specifiedType: const FullType(bool),
      );
    }
    if (object.blockedUsers != null) {
      yield r'blockedUsers';
      yield serializers.serialize(
        object.blockedUsers,
        specifiedType: const FullType(BuiltList, [FullType(BlockedUser)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    UserSettingsInfo object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  @override
  UserSettingsInfo deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return serializers.deserialize(serialized, specifiedType: FullType($UserSettingsInfo)) as $UserSettingsInfo;
  }
}

/// a concrete implementation of [UserSettingsInfo], since [UserSettingsInfo] is not instantiable
@BuiltValue(instantiable: true)
abstract class $UserSettingsInfo implements UserSettingsInfo, Built<$UserSettingsInfo, $UserSettingsInfoBuilder> {
  $UserSettingsInfo._();

  factory $UserSettingsInfo([void Function($UserSettingsInfoBuilder)? updates]) = _$$UserSettingsInfo;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults($UserSettingsInfoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<$UserSettingsInfo> get serializer => _$$UserSettingsInfoSerializer();
}

class _$$UserSettingsInfoSerializer implements PrimitiveSerializer<$UserSettingsInfo> {
  @override
  final Iterable<Type> types = const [$UserSettingsInfo, _$$UserSettingsInfo];

  @override
  final String wireName = r'$UserSettingsInfo';

  @override
  Object serialize(
    Serializers serializers,
    $UserSettingsInfo object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return serializers.serialize(object, specifiedType: FullType(UserSettingsInfo))!;
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required UserSettingsInfoBuilder result,
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
        case r'user':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(User),
          ) as User;
          result.user.replace(valueDes);
          break;
        case r'language':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.language = valueDes;
          break;
        case r'theme':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.theme = valueDes;
          break;
        case r'notifications':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.notifications = valueDes;
          break;
        case r'blockedUsers':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(BlockedUser)]),
          ) as BuiltList<BlockedUser>;
          result.blockedUsers.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  $UserSettingsInfo deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = $UserSettingsInfoBuilder();
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

