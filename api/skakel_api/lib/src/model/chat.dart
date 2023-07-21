//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:skakel_api/src/model/user.dart';
import 'package:skakel_api/src/model/sync_status.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'chat.g.dart';

/// Chat
///
/// Properties:
/// * [id] 
/// * [createdAt] 
/// * [updatedAt] 
/// * [version] 
/// * [syncStatus] 
/// * [name] 
/// * [members] 
/// * [callType] 
@BuiltValue()
abstract class Chat implements Built<Chat, ChatBuilder> {
  @BuiltValueField(wireName: r'id')
  int? get id;

  @BuiltValueField(wireName: r'createdAt')
  DateTime? get createdAt;

  @BuiltValueField(wireName: r'updatedAt')
  DateTime? get updatedAt;

  @BuiltValueField(wireName: r'version')
  int? get version;

  @BuiltValueField(wireName: r'syncStatus')
  SyncStatus? get syncStatus;
  // enum syncStatusEnum {  Synced,  Created,  Updated,  Deleted,  };

  @BuiltValueField(wireName: r'name')
  String get name;

  @BuiltValueField(wireName: r'members')
  BuiltList<User> get members;

  @BuiltValueField(wireName: r'callType')
  ChatCallTypeEnum? get callType;
  // enum callTypeEnum {  Simple,  Group,  };

  Chat._();

  factory Chat([void updates(ChatBuilder b)]) = _$Chat;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ChatBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<Chat> get serializer => _$ChatSerializer();
}

class _$ChatSerializer implements PrimitiveSerializer<Chat> {
  @override
  final Iterable<Type> types = const [Chat, _$Chat];

  @override
  final String wireName = r'Chat';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Chat object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(int),
      );
    }
    if (object.createdAt != null) {
      yield r'createdAt';
      yield serializers.serialize(
        object.createdAt,
        specifiedType: const FullType(DateTime),
      );
    }
    if (object.updatedAt != null) {
      yield r'updatedAt';
      yield serializers.serialize(
        object.updatedAt,
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
    if (object.syncStatus != null) {
      yield r'syncStatus';
      yield serializers.serialize(
        object.syncStatus,
        specifiedType: const FullType(SyncStatus),
      );
    }
    yield r'name';
    yield serializers.serialize(
      object.name,
      specifiedType: const FullType(String),
    );
    yield r'members';
    yield serializers.serialize(
      object.members,
      specifiedType: const FullType(BuiltList, [FullType(User)]),
    );
    if (object.callType != null) {
      yield r'callType';
      yield serializers.serialize(
        object.callType,
        specifiedType: const FullType(ChatCallTypeEnum),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    Chat object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ChatBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.id = valueDes;
          break;
        case r'createdAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.createdAt = valueDes;
          break;
        case r'updatedAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.updatedAt = valueDes;
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
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.name = valueDes;
          break;
        case r'members':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(User)]),
          ) as BuiltList<User>;
          result.members.replace(valueDes);
          break;
        case r'callType':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(ChatCallTypeEnum),
          ) as ChatCallTypeEnum;
          result.callType = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  Chat deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ChatBuilder();
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

class ChatCallTypeEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'Simple')
  static const ChatCallTypeEnum simple = _$chatCallTypeEnum_simple;
  @BuiltValueEnumConst(wireName: r'Group')
  static const ChatCallTypeEnum group = _$chatCallTypeEnum_group;

  static Serializer<ChatCallTypeEnum> get serializer => _$chatCallTypeEnumSerializer;

  const ChatCallTypeEnum._(String name): super(name);

  static BuiltSet<ChatCallTypeEnum> get values => _$chatCallTypeEnumValues;
  static ChatCallTypeEnum valueOf(String name) => _$chatCallTypeEnumValueOf(name);
}

