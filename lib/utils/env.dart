import 'package:envied/envied.dart';

part 'env.g.dart';

@Envied()
abstract class Env {
  @EnviedField(varName: 'BROKER_URL')
  static const String brokerUrl = _Env.brokerUrl;

  @EnviedField(varName: 'BROKER_CLIENT_ID')
  static const String brokerClientId = _Env.brokerClientId;

  @EnviedField(varName: 'SENTRY_DSN')
  static const String sentryDsn = _Env.sentryDsn;
}
