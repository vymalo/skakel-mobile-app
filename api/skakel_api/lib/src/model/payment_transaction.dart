//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:skakel_api/src/model/user.dart';
import 'package:skakel_api/src/model/sync_status.dart';
import 'package:skakel_api/src/model/payment_transaction_info.dart';
import 'package:skakel_api/src/model/base.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'payment_transaction.g.dart';

/// PaymentTransaction
///
/// Properties:
/// * [id] 
/// * [createdAt] 
/// * [updatedAt] 
/// * [version] 
/// * [syncStatus] 
/// * [amount] 
/// * [currency] 
/// * [timestamp] 
/// * [sender] 
/// * [recipient] 
/// * [type] 
/// * [reason] 
/// * [status] 
@BuiltValue()
abstract class PaymentTransaction implements Base, PaymentTransactionInfo, Built<PaymentTransaction, PaymentTransactionBuilder> {
  PaymentTransaction._();

  factory PaymentTransaction([void updates(PaymentTransactionBuilder b)]) = _$PaymentTransaction;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PaymentTransactionBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PaymentTransaction> get serializer => _$PaymentTransactionSerializer();
}

class _$PaymentTransactionSerializer implements PrimitiveSerializer<PaymentTransaction> {
  @override
  final Iterable<Type> types = const [PaymentTransaction, _$PaymentTransaction];

  @override
  final String wireName = r'PaymentTransaction';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PaymentTransaction object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'reason';
    yield serializers.serialize(
      object.reason,
      specifiedType: const FullType(String),
    );
    yield r'amount';
    yield serializers.serialize(
      object.amount,
      specifiedType: const FullType(int),
    );
    yield r'type';
    yield serializers.serialize(
      object.type,
      specifiedType: const FullType(PaymentTransactionInfoTypeEnum),
    );
    if (object.version != null) {
      yield r'version';
      yield serializers.serialize(
        object.version,
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
    yield r'currency';
    yield serializers.serialize(
      object.currency,
      specifiedType: const FullType(String),
    );
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(String),
      );
    }
    if (object.syncStatus != null) {
      yield r'syncStatus';
      yield serializers.serialize(
        object.syncStatus,
        specifiedType: const FullType(SyncStatus),
      );
    }
    if (object.timestamp != null) {
      yield r'timestamp';
      yield serializers.serialize(
        object.timestamp,
        specifiedType: const FullType(DateTime),
      );
    }
    yield r'status';
    yield serializers.serialize(
      object.status,
      specifiedType: const FullType(PaymentTransactionInfoStatusEnum),
    );
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
    PaymentTransaction object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required PaymentTransactionBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'reason':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.reason = valueDes;
          break;
        case r'amount':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.amount = valueDes;
          break;
        case r'type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(PaymentTransactionInfoTypeEnum),
          ) as PaymentTransactionInfoTypeEnum;
          result.type = valueDes;
          break;
        case r'version':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.version = valueDes;
          break;
        case r'createdAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.createdAt = valueDes;
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
        case r'currency':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.currency = valueDes;
          break;
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.id = valueDes;
          break;
        case r'syncStatus':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(SyncStatus),
          ) as SyncStatus;
          result.syncStatus = valueDes;
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
            specifiedType: const FullType(PaymentTransactionInfoStatusEnum),
          ) as PaymentTransactionInfoStatusEnum;
          result.status = valueDes;
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
  PaymentTransaction deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PaymentTransactionBuilder();
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

class PaymentTransactionTypeEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'CreditCard')
  static const PaymentTransactionTypeEnum creditCard = _$paymentTransactionTypeEnum_creditCard;
  @BuiltValueEnumConst(wireName: r'PayPal')
  static const PaymentTransactionTypeEnum payPal = _$paymentTransactionTypeEnum_payPal;
  @BuiltValueEnumConst(wireName: r'ApplePay')
  static const PaymentTransactionTypeEnum applePay = _$paymentTransactionTypeEnum_applePay;
  @BuiltValueEnumConst(wireName: r'GooglePay')
  static const PaymentTransactionTypeEnum googlePay = _$paymentTransactionTypeEnum_googlePay;
  @BuiltValueEnumConst(wireName: r'BankTransfer')
  static const PaymentTransactionTypeEnum bankTransfer = _$paymentTransactionTypeEnum_bankTransfer;

  static Serializer<PaymentTransactionTypeEnum> get serializer => _$paymentTransactionTypeEnumSerializer;

  const PaymentTransactionTypeEnum._(String name): super(name);

  static BuiltSet<PaymentTransactionTypeEnum> get values => _$paymentTransactionTypeEnumValues;
  static PaymentTransactionTypeEnum valueOf(String name) => _$paymentTransactionTypeEnumValueOf(name);
}

class PaymentTransactionStatusEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'Pending')
  static const PaymentTransactionStatusEnum pending = _$paymentTransactionStatusEnum_pending;
  @BuiltValueEnumConst(wireName: r'Completed')
  static const PaymentTransactionStatusEnum completed = _$paymentTransactionStatusEnum_completed;
  @BuiltValueEnumConst(wireName: r'Failed')
  static const PaymentTransactionStatusEnum failed = _$paymentTransactionStatusEnum_failed;

  static Serializer<PaymentTransactionStatusEnum> get serializer => _$paymentTransactionStatusEnumSerializer;

  const PaymentTransactionStatusEnum._(String name): super(name);

  static BuiltSet<PaymentTransactionStatusEnum> get values => _$paymentTransactionStatusEnumValues;
  static PaymentTransactionStatusEnum valueOf(String name) => _$paymentTransactionStatusEnumValueOf(name);
}

