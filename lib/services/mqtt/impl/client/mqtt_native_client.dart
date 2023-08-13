import 'package:mqtt_client/mqtt_client.dart';
import 'package:mqtt_client/mqtt_server_client.dart';
import 'package:skakel_mobile/utils/env.dart';
import 'package:uuid/uuid.dart';

MqttClient getClient() => MqttServerClient.withPort(
      Env.brokerUrl,
      '${Env.brokerClientId}_native_${const Uuid().v4()}',
      Env.brokerMqttPort,
    );
