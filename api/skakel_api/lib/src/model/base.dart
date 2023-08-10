//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:skakel_api/src/model/sync_status.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'base.g.dart';

/// Base
///
/// Properties:
/// * [id] 
/// * [createdAt] 
/// * [updatedAt] 
/// * [version] 
/// * [syncStatus] 
@BuiltValue(instantiable: false)
abstract class Base  {
  @BuiltValueField(wireName: r'id')
  String? get id;

  @BuiltValueField(wireName: r'createdAt')
  DateTime? get createdAt;

  @BuiltValueField(wireName: r'updatedAt')
  DateTime? get updatedAt;

  @BuiltValueField(wireName: r'version')
  int? get version;

  @BuiltValueField(wireName: r'syncStatus')
  SyncStatus? get syncStatus;
  // enum syncStatusEnum {  Synced,  Updated,  Deleted,  };

  @BuiltValueSerializer(custom: true)
  static Serializer<Base> get serializer => _$BaseSerializer();
}

class _$BaseSerializer implements PrimitiveSerializer<Base> {
  @override
  final Iterable<Type> types = const [Base];

  @override
  final String wireName = r'Base';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Base object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(String),
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
  }

  @override
  Object serialize(
    Serializers serializers,
    Base object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  @override
  Base deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return serializers.deserialize(serialized, specifiedType: FullType($Base)) as $Base;
  }
}

/// a concrete implementation of [Base], since [Base] is not instantiable
@BuiltValue(instantiable: true)
abstract class $Base implements Base, Built<$Base, $BaseBuilder> {
  $Base._();

  factory $Base([void Function($BaseBuilder)? updates]) = _$$Base;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults($BaseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<$Base> get serializer => _$$BaseSerializer();
}

class _$$BaseSerializer implements PrimitiveSerializer<$Base> {
  @override
  final Iterable<Type> types = const [$Base, _$$Base];

  @override
  final String wireName = r'$Base';

  @override
  Object serialize(
    Serializers serializers,
    $Base object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return serializers.serialize(object, specifiedType: FullType(Base))!;
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required BaseBuilder result,
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
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  $Base deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = $BaseBuilder();
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

