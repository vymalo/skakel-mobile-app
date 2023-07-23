import 'package:mqtt_client/mqtt_client.dart';

typedef EventHandler = Future<void> Function(String topic, String message);

/// Abstract class for MQTT service
abstract class MqttService {
  /// Returns a stream of messages received
  Stream<String> get onMessageReceived;

  /// Returns a stream of connection status
  Stream<bool> get onConnected;

  /// Returns the connection status
  bool get isConnected;

  /// Attempts to connect to the broker
  Future<void> connect();

  /// Attempts to disconnect from the broker
  Future<void> disconnect();

  /// Publishes a message to the broker
  Future<void> publish(
    String topic,
    String payload, {
    MqttQos qosLevel = MqttQos.atLeastOnce,
  });

  /// Subscribes to a topic
  void registerMessageListener(EventHandler listener);

  /// Unsubscribes from a topic
  void unregisterMessageListener(EventHandler listener);

  /// Subscribes to a topic
  Future<void> subscribe(String topic,
      {MqttQos qosLevel = MqttQos.atLeastOnce});
}
