import 'package:mqtt_client/mqtt_browser_client.dart';
import 'package:mqtt_client/mqtt_client.dart';

MqttClient getClient(String brokerUrl, String clientId) => MqttBrowserClient(brokerUrl, clientId);