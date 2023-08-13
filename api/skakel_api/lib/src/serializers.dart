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

import 'package:skakel_api/src/model/association.dart';
import 'package:skakel_api/src/model/association_all_of.dart';
import 'package:skakel_api/src/model/association_chat.dart';
import 'package:skakel_api/src/model/association_chat_info.dart';
import 'package:skakel_api/src/model/association_info.dart';
import 'package:skakel_api/src/model/association_member.dart';
import 'package:skakel_api/src/model/association_member_info.dart';
import 'package:skakel_api/src/model/association_role.dart';
import 'package:skakel_api/src/model/attachment.dart';
import 'package:skakel_api/src/model/attachment_info.dart';
import 'package:skakel_api/src/model/attachment_type.dart';
import 'package:skakel_api/src/model/base.dart';
import 'package:skakel_api/src/model/blocked_user.dart';
import 'package:skakel_api/src/model/blocked_user_info.dart';
import 'package:skakel_api/src/model/call.dart';
import 'package:skakel_api/src/model/call_info.dart';
import 'package:skakel_api/src/model/chat.dart';
import 'package:skakel_api/src/model/chat_info.dart';
import 'package:skakel_api/src/model/chat_member.dart';
import 'package:skakel_api/src/model/chat_member_info.dart';
import 'package:skakel_api/src/model/chat_message.dart';
import 'package:skakel_api/src/model/chat_message_info.dart';
import 'package:skakel_api/src/model/chat_reaction.dart';
import 'package:skakel_api/src/model/chat_reaction_info.dart';
import 'package:skakel_api/src/model/chat_type.dart';
import 'package:skakel_api/src/model/order.dart';
import 'package:skakel_api/src/model/order_info.dart';
import 'package:skakel_api/src/model/order_item.dart';
import 'package:skakel_api/src/model/order_item_info.dart';
import 'package:skakel_api/src/model/payment_transaction.dart';
import 'package:skakel_api/src/model/payment_transaction_info.dart';
import 'package:skakel_api/src/model/product.dart';
import 'package:skakel_api/src/model/product_info.dart';
import 'package:skakel_api/src/model/reaction_type.dart';
import 'package:skakel_api/src/model/sync_status.dart';
import 'package:skakel_api/src/model/user.dart';
import 'package:skakel_api/src/model/user_info.dart';
import 'package:skakel_api/src/model/user_settings.dart';
import 'package:skakel_api/src/model/user_settings_info.dart';

part 'serializers.g.dart';

@SerializersFor([
  Association,
  AssociationAllOf,$AssociationAllOf,
  AssociationChat,
  AssociationChatInfo,$AssociationChatInfo,
  AssociationInfo,$AssociationInfo,
  AssociationMember,
  AssociationMemberInfo,$AssociationMemberInfo,
  AssociationRole,
  Attachment,
  AttachmentInfo,$AttachmentInfo,
  AttachmentType,
  Base,$Base,
  BlockedUser,
  BlockedUserInfo,$BlockedUserInfo,
  Call,
  CallInfo,$CallInfo,
  Chat,
  ChatInfo,$ChatInfo,
  ChatMember,
  ChatMemberInfo,$ChatMemberInfo,
  ChatMessage,
  ChatMessageInfo,$ChatMessageInfo,
  ChatReaction,
  ChatReactionInfo,$ChatReactionInfo,
  ChatType,
  Order,
  OrderInfo,$OrderInfo,
  OrderItem,
  OrderItemInfo,$OrderItemInfo,
  PaymentTransaction,
  PaymentTransactionInfo,$PaymentTransactionInfo,
  Product,
  ProductInfo,$ProductInfo,
  ReactionType,
  SyncStatus,
  User,
  UserInfo,$UserInfo,
  UserSettings,
  UserSettingsInfo,$UserSettingsInfo,
])
Serializers serializers = (_$serializers.toBuilder()
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(User)]),
        () => ListBuilder<User>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(Association)]),
        () => ListBuilder<Association>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(ChatReaction)]),
        () => ListBuilder<ChatReaction>(),
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
      ..add(AssociationAllOf.serializer)
      ..add(AssociationChatInfo.serializer)
      ..add(AssociationInfo.serializer)
      ..add(AssociationMemberInfo.serializer)
      ..add(AttachmentInfo.serializer)
      ..add(Base.serializer)
      ..add(BlockedUserInfo.serializer)
      ..add(CallInfo.serializer)
      ..add(ChatInfo.serializer)
      ..add(ChatMemberInfo.serializer)
      ..add(ChatMessageInfo.serializer)
      ..add(ChatReactionInfo.serializer)
      ..add(OrderInfo.serializer)
      ..add(OrderItemInfo.serializer)
      ..add(PaymentTransactionInfo.serializer)
      ..add(ProductInfo.serializer)
      ..add(UserInfo.serializer)
      ..add(UserSettingsInfo.serializer)
      ..add(const OneOfSerializer())
      ..add(const AnyOfSerializer())
      ..add(const DateSerializer())
      ..add(Iso8601DateTimeSerializer()))
    .build();

Serializers standardSerializers =
    (serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();
