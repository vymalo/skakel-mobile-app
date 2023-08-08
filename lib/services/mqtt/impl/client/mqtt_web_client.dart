import 'package:mqtt_client/mqtt_browser_client.dart';
import 'package:mqtt_client/mqtt_client.dart';
import 'package:skakel_mobile/utils/env.dart';

MqttClient getClient() => MqttBrowserClient.withPort(
      'wss://${Env.brokerUrl}',
      Env.brokerClientId,
      Env.brokerWsPort,
    );
