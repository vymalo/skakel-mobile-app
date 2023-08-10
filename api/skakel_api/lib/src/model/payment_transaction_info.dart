//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:skakel_api/src/model/user.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'payment_transaction_info.g.dart';

/// PaymentTransactionInfo
///
/// Properties:
/// * [id] 
/// * [amount] 
/// * [currency] 
/// * [timestamp] 
/// * [sender] 
/// * [recipient] 
/// * [type] 
/// * [reason] 
/// * [status] 
@BuiltValue(instantiable: false)
abstract class PaymentTransactionInfo  {
  @BuiltValueField(wireName: r'id')
  String? get id;

  @BuiltValueField(wireName: r'amount')
  int get amount;

  @BuiltValueField(wireName: r'currency')
  String get currency;

  @BuiltValueField(wireName: r'timestamp')
  DateTime? get timestamp;

  @BuiltValueField(wireName: r'sender')
  User get sender;

  @BuiltValueField(wireName: r'recipient')
  User get recipient;

  @BuiltValueField(wireName: r'type')
  PaymentTransactionInfoTypeEnum get type;
  // enum typeEnum {  CreditCard,  PayPal,  ApplePay,  GooglePay,  BankTransfer,  };

  @BuiltValueField(wireName: r'reason')
  String get reason;

  @BuiltValueField(wireName: r'status')
  PaymentTransactionInfoStatusEnum get status;
  // enum statusEnum {  Pending,  Completed,  Failed,  };

  @BuiltValueSerializer(custom: true)
  static Serializer<PaymentTransactionInfo> get serializer => _$PaymentTransactionInfoSerializer();
}

class _$PaymentTransactionInfoSerializer implements PrimitiveSerializer<PaymentTransactionInfo> {
  @override
  final Iterable<Type> types = const [PaymentTransactionInfo];

  @override
  final String wireName = r'PaymentTransactionInfo';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PaymentTransactionInfo object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(String),
      );
    }
    yield r'amount';
    yield serializers.serialize(
      object.amount,
      specifiedType: const FullType(int),
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
      specifiedType: const FullType(PaymentTransactionInfoTypeEnum),
    );
    yield r'reason';
    yield serializers.serialize(
      object.reason,
      specifiedType: const FullType(String),
    );
    yield r'status';
    yield serializers.serialize(
      object.status,
      specifiedType: const FullType(PaymentTransactionInfoStatusEnum),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    PaymentTransactionInfo object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  @override
  PaymentTransactionInfo deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return serializers.deserialize(serialized, specifiedType: FullType($PaymentTransactionInfo)) as $PaymentTransactionInfo;
  }
}

/// a concrete implementation of [PaymentTransactionInfo], since [PaymentTransactionInfo] is not instantiable
@BuiltValue(instantiable: true)
abstract class $PaymentTransactionInfo implements PaymentTransactionInfo, Built<$PaymentTransactionInfo, $PaymentTransactionInfoBuilder> {
  $PaymentTransactionInfo._();

  factory $PaymentTransactionInfo([void Function($PaymentTransactionInfoBuilder)? updates]) = _$$PaymentTransactionInfo;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults($PaymentTransactionInfoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<$PaymentTransactionInfo> get serializer => _$$PaymentTransactionInfoSerializer();
}

class _$$PaymentTransactionInfoSerializer implements PrimitiveSerializer<$PaymentTransactionInfo> {
  @override
  final Iterable<Type> types = const [$PaymentTransactionInfo, _$$PaymentTransactionInfo];

  @override
  final String wireName = r'$PaymentTransactionInfo';

  @override
  Object serialize(
    Serializers serializers,
    $PaymentTransactionInfo object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return serializers.serialize(object, specifiedType: FullType(PaymentTransactionInfo))!;
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required PaymentTransactionInfoBuilder result,
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
        case r'amount':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
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
            specifiedType: const FullType(PaymentTransactionInfoTypeEnum),
          ) as PaymentTransactionInfoTypeEnum;
          result.type = valueDes;
          break;
        case r'reason':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.reason = valueDes;
          break;
        case r'status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(PaymentTransactionInfoStatusEnum),
          ) as PaymentTransactionInfoStatusEnum;
          result.status = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  $PaymentTransactionInfo deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = $PaymentTransactionInfoBuilder();
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

class PaymentTransactionInfoTypeEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'CreditCard')
  static const PaymentTransactionInfoTypeEnum creditCard = _$paymentTransactionInfoTypeEnum_creditCard;
  @BuiltValueEnumConst(wireName: r'PayPal')
  static const PaymentTransactionInfoTypeEnum payPal = _$paymentTransactionInfoTypeEnum_payPal;
  @BuiltValueEnumConst(wireName: r'ApplePay')
  static const PaymentTransactionInfoTypeEnum applePay = _$paymentTransactionInfoTypeEnum_applePay;
  @BuiltValueEnumConst(wireName: r'GooglePay')
  static const PaymentTransactionInfoTypeEnum googlePay = _$paymentTransactionInfoTypeEnum_googlePay;
  @BuiltValueEnumConst(wireName: r'BankTransfer')
  static const PaymentTransactionInfoTypeEnum bankTransfer = _$paymentTransactionInfoTypeEnum_bankTransfer;

  static Serializer<PaymentTransactionInfoTypeEnum> get serializer => _$paymentTransactionInfoTypeEnumSerializer;

  const PaymentTransactionInfoTypeEnum._(String name): super(name);

  static BuiltSet<PaymentTransactionInfoTypeEnum> get values => _$paymentTransactionInfoTypeEnumValues;
  static PaymentTransactionInfoTypeEnum valueOf(String name) => _$paymentTransactionInfoTypeEnumValueOf(name);
}

class PaymentTransactionInfoStatusEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'Pending')
  static const PaymentTransactionInfoStatusEnum pending = _$paymentTransactionInfoStatusEnum_pending;
  @BuiltValueEnumConst(wireName: r'Completed')
  static const PaymentTransactionInfoStatusEnum completed = _$paymentTransactionInfoStatusEnum_completed;
  @BuiltValueEnumConst(wireName: r'Failed')
  static const PaymentTransactionInfoStatusEnum failed = _$paymentTransactionInfoStatusEnum_failed;

  static Serializer<PaymentTransactionInfoStatusEnum> get serializer => _$paymentTransactionInfoStatusEnumSerializer;

  const PaymentTransactionInfoStatusEnum._(String name): super(name);

  static BuiltSet<PaymentTransactionInfoStatusEnum> get values => _$paymentTransactionInfoStatusEnumValues;
  static PaymentTransactionInfoStatusEnum valueOf(String name) => _$paymentTransactionInfoStatusEnumValueOf(name);
}

