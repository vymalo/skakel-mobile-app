import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:logging/logging.dart';
import 'package:skakel_mobile/services/connection_status.dart';
import 'package:skakel_mobile/services/mqtt/impl/chat_mqtt_message_handler.dart';
import 'package:skakel_mobile/services/mqtt/impl/logging_mqtt_message_handler.dart';
import 'package:skakel_mobile/services/mqtt/impl/mqtt_service_impl.dart';
import 'package:skakel_mobile/services/mqtt/mqtt_message_handler.dart';
import 'package:skakel_mobile/services/mqtt/mqtt_service.dart';
import 'package:skakel_mobile/utils/logging.dart';

final log = Logger('MqttManager');

class MqttManager {
  final MqttService _mqttService;
  final List<MqttMessageHandler> _messageHandlers;
  final ConnectionStatus _connectivity;

  MqttManager(this._connectivity, this._mqttService, this._messageHandlers) {
    _mqttService.registerMessageListener(_handleMessageReceived);
    _mqttService.onConnected.listen(_handleConnected);
    log.d('MqttManager initialized!');
  }

  void init() async {
    _connectivity.stream.listen((online) async {
      if (online) {
        // Sync all repositories when connection is re-established
        await _mqttService.connect();
      }
    });

    await connect();
  }

  // Initializes the subscriptions for custom topics from message handlers
  void _initHandlersSubscriptions() {
    for (var handler in _messageHandlers) {
      final customTopics = handler.customTopics;
      for (var topic in customTopics) {
        _mqttService.subscribe(topic);
      }
    }
  }

  Future<void> connect() async {
    await _mqttService.connect();
  }

  Future<void> disconnect() async {
    await _mqttService.disconnect();
  }

  Future<void> _handleMessageReceived(String topic, String payload) async {
    await Future.wait(_messageHandlers
        .where((h) => h.canHandleTopic(topic))
        .map((h) => h.handleMessage(topic, payload)));
  }

  void _handleConnected(bool isConnected) {
    if (isConnected) {
      // Subscribe to MQTT topics once connected (if needed)
      _initHandlersSubscriptions();
    } else {
      // Handle disconnection or reconnection here
    }
  }

  Future<void> sendMessage(String topic, String message) async {
    await _mqttService.publish(topic, message);
  }
}

final mqttManagerProvider = Provider<MqttManager>((ref) {
  log.d('Initializing MqttManager...');
  final mqttService = ref.watch(mqttServiceProvider);
  final messageHandlers = <MqttMessageHandler>[
    ChatMqttMessageHandler(),
    LoggingMqttMessageHandler(),
    // TypingMessageHandler(),
    // SignalingMessageHandler(),
  ];
  final connectivity = ref.watch(connectivityProvider);
  return MqttManager(connectivity, mqttService, messageHandlers);
});
