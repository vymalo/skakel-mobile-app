import 'package:mqtt_client/mqtt_client.dart';
import 'package:mqtt_client/mqtt_server_client.dart';
import 'package:skakel_mobile/utils/env.dart';

MqttClient getClient() => MqttServerClient.withPort(
      Env.brokerUrl,
      Env.brokerClientId,
      Env.brokerMqttPort,
    );
