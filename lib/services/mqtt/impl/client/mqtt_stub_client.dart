import 'package:mqtt_client/mqtt_client.dart';

MqttClient getClient() {
  throw UnsupportedError('Cannot create a client on this platform');
}