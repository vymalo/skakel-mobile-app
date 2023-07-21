//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:skakel_api/src/model/user.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'payment_info.g.dart';

/// PaymentInfo
///
/// Properties:
/// * [amount] 
/// * [currency] 
/// * [timestamp] 
/// * [sender] 
/// * [recipient] 
/// * [type] 
/// * [reason] 
@BuiltValue()
abstract class PaymentInfo implements Built<PaymentInfo, PaymentInfoBuilder> {
  @BuiltValueField(wireName: r'amount')
  num get amount;

  @BuiltValueField(wireName: r'currency')
  String get currency;

  @BuiltValueField(wireName: r'timestamp')
  DateTime? get timestamp;

  @BuiltValueField(wireName: r'sender')
  User get sender;

  @BuiltValueField(wireName: r'recipient')
  User get recipient;

  @BuiltValueField(wireName: r'type')
  PaymentInfoTypeEnum get type;
  // enum typeEnum {  CreditCard,  PayPal,  ApplePay,  GooglePay,  BankTransfer,  };

  @BuiltValueField(wireName: r'reason')
  String get reason;

  PaymentInfo._();

  factory PaymentInfo([void updates(PaymentInfoBuilder b)]) = _$PaymentInfo;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PaymentInfoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PaymentInfo> get serializer => _$PaymentInfoSerializer();
}

class _$PaymentInfoSerializer implements PrimitiveSerializer<PaymentInfo> {
  @override
  final Iterable<Type> types = const [PaymentInfo, _$PaymentInfo];

  @override
  final String wireName = r'PaymentInfo';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PaymentInfo object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'amount';
    yield serializers.serialize(
      object.amount,
      specifiedType: const FullType(num),
    );
    yield r'currency';
    yield serializers.serialize(
      object.currency,
      specifiedType: const FullType(String),
    );
    if (object.timestamp != null) {
      yield r'timestamp';
      yield serializers.serialize(
        object.timestamp,
        specifiedType: const FullType(DateTime),
      );
    }
    yield r'sender';
    yield serializers.serialize(
      object.sender,
      specifiedType: const FullType(User),
    );
    yield r'recipient';
    yield serializers.serialize(
      object.recipient,
      specifiedType: const FullType(User),
    );
    yield r'type';
    yield serializers.serialize(
      object.type,
      specifiedType: const FullType(PaymentInfoTypeEnum),
    );
    yield r'reason';
    yield serializers.serialize(
      object.reason,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    PaymentInfo object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required PaymentInfoBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'amount':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.amount = valueDes;
          break;
        case r'currency':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.currency = valueDes;
          break;
        case r'timestamp':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.timestamp = valueDes;
          break;
        case r'sender':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(User),
          ) as User;
          result.sender.replace(valueDes);
          break;
        case r'recipient':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(User),
          ) as User;
          result.recipient.replace(valueDes);
          break;
        case r'type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(PaymentInfoTypeEnum),
          ) as PaymentInfoTypeEnum;
          result.type = valueDes;
          break;
        case r'reason':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.reason = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  PaymentInfo deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PaymentInfoBuilder();
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

class PaymentInfoTypeEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'CreditCard')
  static const PaymentInfoTypeEnum creditCard = _$paymentInfoTypeEnum_creditCard;
  @BuiltValueEnumConst(wireName: r'PayPal')
  static const PaymentInfoTypeEnum payPal = _$paymentInfoTypeEnum_payPal;
  @BuiltValueEnumConst(wireName: r'ApplePay')
  static const PaymentInfoTypeEnum applePay = _$paymentInfoTypeEnum_applePay;
  @BuiltValueEnumConst(wireName: r'GooglePay')
  static const PaymentInfoTypeEnum googlePay = _$paymentInfoTypeEnum_googlePay;
  @BuiltValueEnumConst(wireName: r'BankTransfer')
  static const PaymentInfoTypeEnum bankTransfer = _$paymentInfoTypeEnum_bankTransfer;

  static Serializer<PaymentInfoTypeEnum> get serializer => _$paymentInfoTypeEnumSerializer;

  const PaymentInfoTypeEnum._(String name): super(name);

  static BuiltSet<PaymentInfoTypeEnum> get values => _$paymentInfoTypeEnumValues;
  static PaymentInfoTypeEnum valueOf(String name) => _$paymentInfoTypeEnumValueOf(name);
}

