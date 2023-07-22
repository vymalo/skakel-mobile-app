import 'package:mqtt_client/mqtt_client.dart';
import 'package:mqtt_client/mqtt_server_client.dart';

MqttClient getClient(String brokerUrl, String clientId) =>
    MqttServerClient(brokerUrl, clientId);
