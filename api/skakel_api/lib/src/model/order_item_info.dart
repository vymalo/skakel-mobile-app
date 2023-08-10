//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'order_item_info.g.dart';

/// OrderItemInfo
///
/// Properties:
/// * [id] 
/// * [productId] 
/// * [orderId] 
/// * [quantity] 
/// * [notes] 
@BuiltValue(instantiable: false)
abstract class OrderItemInfo  {
  @BuiltValueField(wireName: r'id')
  String? get id;

  @BuiltValueField(wireName: r'productId')
  String get productId;

  @BuiltValueField(wireName: r'orderId')
  String get orderId;

  @BuiltValueField(wireName: r'quantity')
  int get quantity;

  @BuiltValueField(wireName: r'notes')
  String? get notes;

  @BuiltValueSerializer(custom: true)
  static Serializer<OrderItemInfo> get serializer => _$OrderItemInfoSerializer();
}

class _$OrderItemInfoSerializer implements PrimitiveSerializer<OrderItemInfo> {
  @override
  final Iterable<Type> types = const [OrderItemInfo];

  @override
  final String wireName = r'OrderItemInfo';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    OrderItemInfo object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(String),
      );
    }
    yield r'productId';
    yield serializers.serialize(
      object.productId,
      specifiedType: const FullType(String),
    );
    yield r'orderId';
    yield serializers.serialize(
      object.orderId,
      specifiedType: const FullType(String),
    );
    yield r'quantity';
    yield serializers.serialize(
      object.quantity,
      specifiedType: const FullType(int),
    );
    if (object.notes != null) {
      yield r'notes';
      yield serializers.serialize(
        object.notes,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    OrderItemInfo object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  @override
  OrderItemInfo deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return serializers.deserialize(serialized, specifiedType: FullType($OrderItemInfo)) as $OrderItemInfo;
  }
}

/// a concrete implementation of [OrderItemInfo], since [OrderItemInfo] is not instantiable
@BuiltValue(instantiable: true)
abstract class $OrderItemInfo implements OrderItemInfo, Built<$OrderItemInfo, $OrderItemInfoBuilder> {
  $OrderItemInfo._();

  factory $OrderItemInfo([void Function($OrderItemInfoBuilder)? updates]) = _$$OrderItemInfo;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults($OrderItemInfoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<$OrderItemInfo> get serializer => _$$OrderItemInfoSerializer();
}

class _$$OrderItemInfoSerializer implements PrimitiveSerializer<$OrderItemInfo> {
  @override
  final Iterable<Type> types = const [$OrderItemInfo, _$$OrderItemInfo];

  @override
  final String wireName = r'$OrderItemInfo';

  @override
  Object serialize(
    Serializers serializers,
    $OrderItemInfo object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return serializers.serialize(object, specifiedType: FullType(OrderItemInfo))!;
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required OrderItemInfoBuilder result,
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
        case r'productId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.productId = valueDes;
          break;
        case r'orderId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.orderId = valueDes;
          break;
        case r'quantity':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.quantity = valueDes;
          break;
        case r'notes':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.notes = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  $OrderItemInfo deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = $OrderItemInfoBuilder();
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

