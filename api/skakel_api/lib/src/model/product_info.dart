//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:skakel_api/src/model/user.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'product_info.g.dart';

/// ProductInfo
///
/// Properties:
/// * [name] 
/// * [description] 
/// * [price] 
/// * [seller] 
/// * [content] 
/// * [productType] 
@BuiltValue()
abstract class ProductInfo implements Built<ProductInfo, ProductInfoBuilder> {
  @BuiltValueField(wireName: r'name')
  String get name;

  @BuiltValueField(wireName: r'description')
  String? get description;

  @BuiltValueField(wireName: r'price')
  num get price;

  @BuiltValueField(wireName: r'seller')
  User get seller;

  @BuiltValueField(wireName: r'content')
  JsonObject? get content;

  @BuiltValueField(wireName: r'productType')
  String? get productType;

  ProductInfo._();

  factory ProductInfo([void updates(ProductInfoBuilder b)]) = _$ProductInfo;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ProductInfoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ProductInfo> get serializer => _$ProductInfoSerializer();
}

class _$ProductInfoSerializer implements PrimitiveSerializer<ProductInfo> {
  @override
  final Iterable<Type> types = const [ProductInfo, _$ProductInfo];

  @override
  final String wireName = r'ProductInfo';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ProductInfo object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'name';
    yield serializers.serialize(
      object.name,
      specifiedType: const FullType(String),
    );
    if (object.description != null) {
      yield r'description';
      yield serializers.serialize(
        object.description,
        specifiedType: const FullType(String),
      );
    }
    yield r'price';
    yield serializers.serialize(
      object.price,
      specifiedType: const FullType(num),
    );
    yield r'seller';
    yield serializers.serialize(
      object.seller,
      specifiedType: const FullType(User),
    );
    if (object.content != null) {
      yield r'content';
      yield serializers.serialize(
        object.content,
        specifiedType: const FullType(JsonObject),
      );
    }
    if (object.productType != null) {
      yield r'productType';
      yield serializers.serialize(
        object.productType,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ProductInfo object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ProductInfoBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.name = valueDes;
          break;
        case r'description':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.description = valueDes;
          break;
        case r'price':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.price = valueDes;
          break;
        case r'seller':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(User),
          ) as User;
          result.seller.replace(valueDes);
          break;
        case r'content':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(JsonObject),
          ) as JsonObject;
          result.content = valueDes;
          break;
        case r'productType':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.productType = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ProductInfo deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ProductInfoBuilder();
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

