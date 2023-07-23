import 'package:logging/logging.dart';
import 'package:skakel_mobile/services/mqtt/mqtt_message_handler.dart';
import 'package:skakel_mobile/utils/logging.dart';

final log = Logger('LoggingMqttMessageHandler');

/// A [MqttMessageHandler] that logs all messages received on any topic
class LoggingMqttMessageHandler extends MqttMessageHandler {
  @override
  List<String> get customTopics => ['#'];

  @override
  bool canHandleTopic(String topic) => true;

  @override
  Future<void> handleMessage(String topic, String payload) async {
    log.i('Received message on topic $topic: $payload');
  }
}
