import 'package:mqtt_client/mqtt_client.dart';

MqttClient getClient(String brokerUrl, String clientId) {
  throw UnsupportedError('Cannot create a client on this platform');
}