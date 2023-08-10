//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:skakel_api/src/model/order_item.dart';
import 'package:built_collection/built_collection.dart';
import 'package:skakel_api/src/model/user.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'order_info.g.dart';

/// OrderInfo
///
/// Properties:
/// * [id] 
/// * [items] 
/// * [totalAmount] 
/// * [timestamp] 
/// * [status] 
/// * [buyer] 
/// * [seller] 
@BuiltValue(instantiable: false)
abstract class OrderInfo  {
  @BuiltValueField(wireName: r'id')
  String? get id;

  @BuiltValueField(wireName: r'items')
  BuiltList<OrderItem> get items;

  @BuiltValueField(wireName: r'totalAmount')
  int get totalAmount;

  @BuiltValueField(wireName: r'timestamp')
  DateTime? get timestamp;

  @BuiltValueField(wireName: r'status')
  String? get status;

  @BuiltValueField(wireName: r'buyer')
  User get buyer;

  @BuiltValueField(wireName: r'seller')
  User get seller;

  @BuiltValueSerializer(custom: true)
  static Serializer<OrderInfo> get serializer => _$OrderInfoSerializer();
}

class _$OrderInfoSerializer implements PrimitiveSerializer<OrderInfo> {
  @override
  final Iterable<Type> types = const [OrderInfo];

  @override
  final String wireName = r'OrderInfo';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    OrderInfo object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(String),
      );
    }
    yield r'items';
    yield serializers.serialize(
      object.items,
      specifiedType: const FullType(BuiltList, [FullType(OrderItem)]),
    );
    yield r'totalAmount';
    yield serializers.serialize(
      object.totalAmount,
      specifiedType: const FullType(int),
    );
    if (object.timestamp != null) {
      yield r'timestamp';
      yield serializers.serialize(
        object.timestamp,
        specifiedType: const FullType(DateTime),
      );
    }
    if (object.status != null) {
      yield r'status';
      yield serializers.serialize(
        object.status,
        specifiedType: const FullType(String),
      );
    }
    yield r'buyer';
    yield serializers.serialize(
      object.buyer,
      specifiedType: const FullType(User),
    );
    yield r'seller';
    yield serializers.serialize(
      object.seller,
      specifiedType: const FullType(User),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    OrderInfo object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  @override
  OrderInfo deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return serializers.deserialize(serialized, specifiedType: FullType($OrderInfo)) as $OrderInfo;
  }
}

/// a concrete implementation of [OrderInfo], since [OrderInfo] is not instantiable
@BuiltValue(instantiable: true)
abstract class $OrderInfo implements OrderInfo, Built<$OrderInfo, $OrderInfoBuilder> {
  $OrderInfo._();

  factory $OrderInfo([void Function($OrderInfoBuilder)? updates]) = _$$OrderInfo;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults($OrderInfoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<$OrderInfo> get serializer => _$$OrderInfoSerializer();
}

class _$$OrderInfoSerializer implements PrimitiveSerializer<$OrderInfo> {
  @override
  final Iterable<Type> types = const [$OrderInfo, _$$OrderInfo];

  @override
  final String wireName = r'$OrderInfo';

  @override
  Object serialize(
    Serializers serializers,
    $OrderInfo object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return serializers.serialize(object, specifiedType: FullType(OrderInfo))!;
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required OrderInfoBuilder result,
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
        case r'items':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(OrderItem)]),
          ) as BuiltList<OrderItem>;
          result.items.replace(valueDes);
          break;
        case r'totalAmount':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.totalAmount = valueDes;
          break;
        case r'timestamp':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.timestamp = valueDes;
          break;
        case r'status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.status = valueDes;
          break;
        case r'buyer':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(User),
          ) as User;
          result.buyer.replace(valueDes);
          break;
        case r'seller':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(User),
          ) as User;
          result.seller.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  $OrderInfo deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = $OrderInfoBuilder();
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

