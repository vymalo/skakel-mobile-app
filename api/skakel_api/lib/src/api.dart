//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:dio/dio.dart';
import 'package:built_value/serializer.dart';
import 'package:skakel_api/src/serializers.dart';
import 'package:skakel_api/src/auth/api_key_auth.dart';
import 'package:skakel_api/src/auth/basic_auth.dart';
import 'package:skakel_api/src/auth/bearer_auth.dart';
import 'package:skakel_api/src/auth/oauth.dart';
import 'package:skakel_api/src/api/association_api.dart';
import 'package:skakel_api/src/api/attachment_api.dart';
import 'package:skakel_api/src/api/call_api.dart';
import 'package:skakel_api/src/api/chat_api.dart';
import 'package:skakel_api/src/api/chat_member_api.dart';
import 'package:skakel_api/src/api/chat_message_api.dart';
import 'package:skakel_api/src/api/chat_reaction_api.dart';
import 'package:skakel_api/src/api/order_api.dart';
import 'package:skakel_api/src/api/payment_api.dart';
import 'package:skakel_api/src/api/product_api.dart';
import 'package:skakel_api/src/api/user_api.dart';
import 'package:skakel_api/src/api/user_settings_api.dart';

class SkakelApi {
  static const String basePath = r'https://skakel.apps.ssegning.com/api';

  final Dio dio;
  final Serializers serializers;

  SkakelApi({
    Dio? dio,
    Serializers? serializers,
    String? basePathOverride,
    List<Interceptor>? interceptors,
  })  : this.serializers = serializers ?? standardSerializers,
        this.dio = dio ??
            Dio(BaseOptions(
              baseUrl: basePathOverride ?? basePath,
              connectTimeout: const Duration(milliseconds: 5000),
              receiveTimeout: const Duration(milliseconds: 3000),
            )) {
    if (interceptors == null) {
      this.dio.interceptors.addAll([
        OAuthInterceptor(),
        BasicAuthInterceptor(),
        BearerAuthInterceptor(),
        ApiKeyAuthInterceptor(),
      ]);
    } else {
      this.dio.interceptors.addAll(interceptors);
    }
  }

  void setOAuthToken(String name, String token) {
    if (this.dio.interceptors.any((i) => i is OAuthInterceptor)) {
      (this.dio.interceptors.firstWhere((i) => i is OAuthInterceptor) as OAuthInterceptor).tokens[name] = token;
    }
  }

  void setBearerAuth(String name, String token) {
    if (this.dio.interceptors.any((i) => i is BearerAuthInterceptor)) {
      (this.dio.interceptors.firstWhere((i) => i is BearerAuthInterceptor) as BearerAuthInterceptor).tokens[name] = token;
    }
  }

  void setBasicAuth(String name, String username, String password) {
    if (this.dio.interceptors.any((i) => i is BasicAuthInterceptor)) {
      (this.dio.interceptors.firstWhere((i) => i is BasicAuthInterceptor) as BasicAuthInterceptor).authInfo[name] = BasicAuthInfo(username, password);
    }
  }

  void setApiKey(String name, String apiKey) {
    if (this.dio.interceptors.any((i) => i is ApiKeyAuthInterceptor)) {
      (this.dio.interceptors.firstWhere((element) => element is ApiKeyAuthInterceptor) as ApiKeyAuthInterceptor).apiKeys[name] = apiKey;
    }
  }

  /// Get AssociationApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  AssociationApi getAssociationApi() {
    return AssociationApi(dio, serializers);
  }

  /// Get AttachmentApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  AttachmentApi getAttachmentApi() {
    return AttachmentApi(dio, serializers);
  }

  /// Get CallApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  CallApi getCallApi() {
    return CallApi(dio, serializers);
  }

  /// Get ChatApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  ChatApi getChatApi() {
    return ChatApi(dio, serializers);
  }

  /// Get ChatMemberApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  ChatMemberApi getChatMemberApi() {
    return ChatMemberApi(dio, serializers);
  }

  /// Get ChatMessageApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  ChatMessageApi getChatMessageApi() {
    return ChatMessageApi(dio, serializers);
  }

  /// Get ChatReactionApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  ChatReactionApi getChatReactionApi() {
    return ChatReactionApi(dio, serializers);
  }

  /// Get OrderApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  OrderApi getOrderApi() {
    return OrderApi(dio, serializers);
  }

  /// Get PaymentApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  PaymentApi getPaymentApi() {
    return PaymentApi(dio, serializers);
  }

  /// Get ProductApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  ProductApi getProductApi() {
    return ProductApi(dio, serializers);
  }

  /// Get UserApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  UserApi getUserApi() {
    return UserApi(dio, serializers);
  }

  /// Get UserSettingsApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  UserSettingsApi getUserSettingsApi() {
    return UserSettingsApi(dio, serializers);
  }
}
