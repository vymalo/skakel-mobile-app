//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_import

import 'package:one_of_serializer/any_of_serializer.dart';
import 'package:one_of_serializer/one_of_serializer.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:built_value/iso_8601_date_time_serializer.dart';
import 'package:skakel_api/src/date_serializer.dart';
import 'package:skakel_api/src/model/date.dart';

import 'package:skakel_api/src/model/attachment.dart';
import 'package:skakel_api/src/model/call.dart';
import 'package:skakel_api/src/model/chat.dart';
import 'package:skakel_api/src/model/chat_message.dart';
import 'package:skakel_api/src/model/chat_reaction.dart';
import 'package:skakel_api/src/model/order.dart';
import 'package:skakel_api/src/model/order_info.dart';
import 'package:skakel_api/src/model/payment_info.dart';
import 'package:skakel_api/src/model/payment_transaction.dart';
import 'package:skakel_api/src/model/product.dart';
import 'package:skakel_api/src/model/product_info.dart';
import 'package:skakel_api/src/model/sync_status.dart';
import 'package:skakel_api/src/model/user.dart';
import 'package:skakel_api/src/model/user_settings.dart';

part 'serializers.g.dart';

@SerializersFor([
  Attachment,
  Call,
  Chat,
  ChatMessage,
  ChatReaction,
  Order,
  OrderInfo,
  PaymentInfo,
  PaymentTransaction,
  Product,
  ProductInfo,
  SyncStatus,
  User,
  UserSettings,
])
Serializers serializers = (_$serializers.toBuilder()
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(User)]),
        () => ListBuilder<User>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(Attachment)]),
        () => ListBuilder<Attachment>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(Call)]),
        () => ListBuilder<Call>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(Product)]),
        () => ListBuilder<Product>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(Order)]),
        () => ListBuilder<Order>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(Chat)]),
        () => ListBuilder<Chat>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(ChatMessage)]),
        () => ListBuilder<ChatMessage>(),
      )
      ..add(const OneOfSerializer())
      ..add(const AnyOfSerializer())
      ..add(const DateSerializer())
      ..add(Iso8601DateTimeSerializer()))
    .build();

Serializers standardSerializers =
    (serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();
