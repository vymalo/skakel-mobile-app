import 'package:mqtt_client/mqtt_client.dart';

typedef EventHandler = Future<void> Function(String topic, String message);

abstract class MqttService {
  Stream<String> get onMessageReceived;

  Stream<bool> get onConnected;

  bool get isConnected;

  Future<void> connect();

  Future<void> disconnect();

  Future<void> publish(
    String topic,
    String payload, {
    MqttQos qosLevel = MqttQos.atLeastOnce,
  });

  void registerMessageListener(EventHandler listener);

  void unregisterMessageListener(EventHandler listener);

  Future<void> subscribe(String topic, {MqttQos qosLevel = MqttQos.atLeastOnce});
}
