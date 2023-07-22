abstract class MqttMessageHandler {
  /// Provides a list of custom topics the handler supports.
  List<String> get customTopics => [];

  /// Checks if the message handler can handle the given MQTT topic.
  bool canHandleTopic(String topic) {
    return customTopics.contains(topic);
  }

  /// Handles the incoming MQTT message with the specified topic and payload.
  Future<void> handleMessage(String topic, String payload);
}