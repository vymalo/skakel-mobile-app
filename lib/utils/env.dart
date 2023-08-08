import 'package:envied/envied.dart';

part 'env.g.dart';

/// This class is used to access the environment variables.
@Envied()
abstract class Env {
  /// This is the base URL of the API.
  @EnviedField(varName: 'BROKER_URL')
  static const String brokerUrl = _Env.brokerUrl;
  /// This is the base URL of the API.
  @EnviedField(varName: 'BROKER_MQTT_PORT')
  static const int brokerMqttPort = _Env.brokerMqttPort;
  /// This is the base URL of the API.
  @EnviedField(varName: 'BROKER_WS_PORT')
  static const int brokerWsPort = _Env.brokerWsPort;

  /// This is the client ID of the API.
  @EnviedField(varName: 'BROKER_CLIENT_ID')
  static const String brokerClientId = _Env.brokerClientId;

  /// This is the client ID of the API.
  @EnviedField(varName: 'BROKER_USERNAME')
  static const String brokerUsername = _Env.brokerUsername;

  /// This is the client ID of the API.
  @EnviedField(varName: 'BROKER_PASSWORD')
  static const String brokerPassword = _Env.brokerPassword;

  /// This is the sentry DSN.
  @EnviedField(varName: 'SENTRY_DSN')
  static const String sentryDsn = _Env.sentryDsn;

  /// This is the API URL.
  @EnviedField(varName: 'API_URL')
  static const String apiUrl = _Env.apiUrl;

  /// This is the API URL.
  @EnviedField(varName: 'PUSHY_WEB_APP_ID')
  static const String pushyWebAppId = _Env.pushyWebAppId;

  /// This is the OAuth client ID.
  @EnviedField(varName: 'OAUTH_CLIENT_ID')
  static const String oauthClientId = _Env.oauthClientId;

  /// This is the OAuth client secret.
  @EnviedField(varName: 'OAUTH_CLIENT_SECRET')
  static const String oauthClientSecret = _Env.oauthClientSecret;

  /// This is the OAuth client authorization URL.
  @EnviedField(varName: 'OAUTH_AUTHORIZATION_URL')
  static const String oauthAuthorizationUrl = _Env.oauthAuthorizationUrl;

  /// This is the OAuth client token URL.
  @EnviedField(varName: 'OAUTH_TOKEN_URL')
  static const String oauthTokenUrl = _Env.oauthTokenUrl;

  /// This is the OAuth client scopes.
  @EnviedField(varName: 'OAUTH_SCOPES')
  static const String oauthScopes = _Env.oauthScopes;
}
