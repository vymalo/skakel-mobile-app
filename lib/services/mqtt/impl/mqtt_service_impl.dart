import 'dart:async';

import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mqtt_client/mqtt_client.dart';
import 'package:rxdart/rxdart.dart';
import 'package:skakel_mobile/services/auth/auth.dart';
import 'package:skakel_mobile/services/auth/auth_impl.dart';
import 'package:skakel_mobile/services/mqtt/impl/client/mqtt_shared_client.dart';
import 'package:skakel_mobile/services/mqtt/mqtt_service.dart';
import 'package:skakel_mobile/utils/logging.dart';

class MqttServiceImpl implements MqttService {
  final AuthService _authService;
  final MqttClient _client;
  StreamSubscription<List<MqttReceivedMessage<MqttMessage>>>?
      _messageSubscription;
  final List<EventHandler> _listeners = [];

  final BehaviorSubject<String> _messageReceivedController =
      BehaviorSubject<String>();
  final BehaviorSubject<bool> _connectedController =
      BehaviorSubject<bool>.seeded(false);

  MqttServiceImpl(
    this._authService, {
    required String brokerUrl,
    required String clientId,
  }) : _client = getClient(brokerUrl, clientId) {
    log.d('MqttService initialized!');
  }

  @override
  Stream<String> get onMessageReceived {
    return _messageReceivedController.stream;
  }

  @override
  Stream<bool> get onConnected {
    return _connectedController.stream;
  }

  @override
  bool get isConnected {
    return _connectedController.value;
  }

  @override
  Future<void> connect() async {
    log.d('Connecting to MQTT broker...');

    // TODO: Check if the token comes really before connecting
    _client.onAutoReconnect = () async {
      log.d('Reconnecting to MQTT broker...');
      final token = await _authService.getToken();
      _client.connectionMessage?.authenticateAs('username', token);
    };

    try {
      log.d('Getting token...');
      final token = await _authService.getToken();

      log.d('Actual connection...');
      await _client.connect('token', token);

      _client.autoReconnect = true;
      _connectedController.add(true);
    } catch (e) {
      _connectedController.add(false);
      log.e('MqttService connection error: $e');
    }
  }

  @override
  Future<void> disconnect() async {
    _client.disconnect();
    _messageSubscription?.cancel();
    _listeners.clear();
  }

  @override
  Future<void> publish(String topic, String payload,
      {MqttQos qosLevel = MqttQos.atLeastOnce}) async {
    log.d('Publishing message to topic $topic...');
    final builder = MqttClientPayloadBuilder();
    builder.addString(payload);
    _client.publishMessage(topic, qosLevel, builder.payload!);
    log.d('Message published!');
  }

  @override
  void registerMessageListener(EventHandler listener) {
    log.d('Registering message listener...');
    _listeners.add(listener);

    log.d('Subscribing to MQTT broker...');
    if (_client.updates == null) {
      log.w('MQTT client updates stream is null!');
      return;
    }

    log.d('Listening to MQTT messages...');
    _messageSubscription ??= _client.updates!.listen((messages) {
      for (final message in messages) {
        if (message.payload is! MqttPublishMessage) {
          continue;
        }

        final mqttMessage = message.payload as MqttPublishMessage;
        final payload = mqttMessage.payload.message;

        for (final listener in _listeners) {
          listener(
            mqttMessage.variableHeader!.topicName,
            String.fromCharCodes(payload),
          );
        }
      }
    });
  }

  @override
  void unregisterMessageListener(EventHandler listener) {
    _listeners.remove(listener);
    if (_listeners.isEmpty) {
      _messageSubscription?.cancel();
      _messageSubscription = null;
    }
  }

  @override
  Future<void> subscribe(String topic,
      {MqttQos qosLevel = MqttQos.atLeastOnce}) async {
    _client.subscribe(topic, qosLevel);
  }
}

final mqttServiceProvider = Provider<MqttService>((ref) {
  log.d('Initializing MqttService...');
  final authService = ref.watch(authServiceProvider);
  return MqttServiceImpl(
    authService,
    brokerUrl: dotenv.env['BROKER_URL']!,
    clientId: dotenv.env['BROKER_CLIENT_ID']!,
  );
});
