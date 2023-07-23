import 'package:envied/envied.dart';

part 'env.g.dart';

/// This class is used to access the environment variables.
@Envied()
abstract class Env {
  /// This is the base URL of the API.
  @EnviedField(varName: 'BROKER_URL')
  static const String brokerUrl = _Env.brokerUrl;

  /// This is the client ID of the API.
  @EnviedField(varName: 'BROKER_CLIENT_ID')
  static const String brokerClientId = _Env.brokerClientId;

  /// This is the sentry DSN.
  @EnviedField(varName: 'SENTRY_DSN')
  static const String sentryDsn = _Env.sentryDsn;

  /// This is the API URL.
  @EnviedField(varName: 'API_URL')
  static const String apiUrl = _Env.apiUrl;
}
