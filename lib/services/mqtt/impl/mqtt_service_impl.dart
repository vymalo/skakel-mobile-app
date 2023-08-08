import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:logging/logging.dart';
import 'package:mqtt_client/mqtt_client.dart';
import 'package:rxdart/rxdart.dart';
import 'package:skakel_mobile/services/mqtt/impl/client/mqtt_shared_client.dart';
import 'package:skakel_mobile/services/mqtt/mqtt_service.dart';
import 'package:skakel_mobile/utils/env.dart';
import 'package:skakel_mobile/utils/logging.dart';

final log = Logger('MqttServiceImpl');

class MqttServiceImpl implements MqttService {
  final MqttClient _client;
  StreamSubscription<List<MqttReceivedMessage<MqttMessage>>>?
      _messageSubscription;
  final List<EventHandler> _listeners = [];

  final BehaviorSubject<String> _messageReceivedController =
      BehaviorSubject<String>();
  final BehaviorSubject<bool> _connectedController =
      BehaviorSubject<bool>.seeded(false);

  MqttServiceImpl() : _client = getClient() {
    log.d('MqttService initialized!');
    _client.logging(on: !kReleaseMode);
    _client.keepAlivePeriod = 30;
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

    try {
      _client.autoReconnect = true;

      log.d('Actual connection...');
      await _client.connect(
        Env.brokerUsername,
        Env.brokerPassword,
      );

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
  return MqttServiceImpl();
});
