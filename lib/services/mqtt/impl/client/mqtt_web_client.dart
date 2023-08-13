import 'package:mqtt_client/mqtt_browser_client.dart';
import 'package:mqtt_client/mqtt_client.dart';
import 'package:skakel_mobile/utils/env.dart';
import 'package:uuid/uuid.dart';

MqttClient getClient() => MqttBrowserClient.withPort(
      'ws://${Env.brokerUrl}/ws',
      '${Env.brokerClientId}_${const Uuid().v4()}',
      Env.brokerWsPort,
    );
