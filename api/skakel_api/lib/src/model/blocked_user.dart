//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:skakel_api/src/model/sync_status.dart';
import 'package:skakel_api/src/model/base.dart';
import 'package:skakel_api/src/model/blocked_user_info.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'blocked_user.g.dart';

/// BlockedUser
///
/// Properties:
/// * [id] 
/// * [createdAt] 
/// * [updatedAt] 
/// * [version] 
/// * [syncStatus] 
/// * [userSettingId] 
/// * [blockedUserId] 
@BuiltValue()
abstract class BlockedUser implements Base, BlockedUserInfo, Built<BlockedUser, BlockedUserBuilder> {
  BlockedUser._();

  factory BlockedUser([void updates(BlockedUserBuilder b)]) = _$BlockedUser;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(BlockedUserBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<BlockedUser> get serializer => _$BlockedUserSerializer();
}

class _$BlockedUserSerializer implements PrimitiveSerializer<BlockedUser> {
  @override
  final Iterable<Type> types = const [BlockedUser, _$BlockedUser];

  @override
  final String wireName = r'BlockedUser';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    BlockedUser object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.createdAt != null) {
      yield r'createdAt';
      yield serializers.serialize(
        object.createdAt,
        specifiedType: const FullType(DateTime),
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
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(String),
      );
    }
    if (object.version != null) {
      yield r'version';
      yield serializers.serialize(
        object.version,
        specifiedType: const FullType(int),
      );
    }
    if (object.syncStatus != null) {
      yield r'syncStatus';
      yield serializers.serialize(
        object.syncStatus,
        specifiedType: const FullType(SyncStatus),
      );
    }
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
    BlockedUser object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required BlockedUserBuilder result,
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
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.id = valueDes;
          break;
        case r'version':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.version = valueDes;
          break;
        case r'syncStatus':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(SyncStatus),
          ) as SyncStatus;
          result.syncStatus = valueDes;
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
  BlockedUser deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = BlockedUserBuilder();
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

