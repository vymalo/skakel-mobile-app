import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:logging/logging.dart';
import 'package:mqtt_client/mqtt_client.dart';
import 'package:rxdart/rxdart.dart';
import 'package:skakel_mobile/services/auth/auth.dart';
import 'package:skakel_mobile/services/auth/auth_impl.dart';
import 'package:skakel_mobile/services/connection_status.dart';
import 'package:skakel_mobile/services/mqtt/impl/client/mqtt_shared_client.dart';
import 'package:skakel_mobile/services/mqtt/impl/mqtt_service_proxy.dart';
import 'package:skakel_mobile/services/mqtt/mqtt_service.dart';
import 'package:skakel_mobile/utils/logging.dart';
import 'package:tuple/tuple.dart';

final log = Logger('MqttServiceImpl');

class MqttServiceImpl implements MqttService {
  @protected
  final MqttClient _client;

  @protected
  String? authToken;

  @protected
  StreamSubscription<List<MqttReceivedMessage<MqttMessage>>>?
      _messageSubscription;

  @protected
  final List<EventHandler> _listeners = [];

  @protected
  final _messageReceivedController = BehaviorSubject<String>();

  @protected
  final _connectedController = BehaviorSubject<bool>.seeded(false);

  MqttServiceImpl(AuthService authService, ConnectionStatus connectivity)
      : _client = getClient() {
    _client.logging(on: !kReleaseMode);
    _client.keepAlivePeriod = 30;
    _client.autoReconnect = true;

    _client.onDisconnected = () {
      log.d('MQTT client disconnected!');
      _connectedController.add(false);
    };

    _client.onAutoReconnect = () {
      log.d('MQTT client auto-reconnect: ${_client.connectionStatus}');
    };

    Rx.combineLatest2(
      connectivity.stream,
      authService.stream,
      (a, b) => Tuple2(
        a && b.isLoggedIn,
        b.whenOrNull(token: (t) => t, out: () => null),
      ),
    ).listen((t) async {
      authToken = t.item2?.accessToken; // Update the auth token
      if (t.item1) {
        connect();
      } else {
        disconnect();
      }
    });
    log.d('MqttService initialized!');
  }

  @override
  Stream<String> get onMessageReceived => _messageReceivedController.stream;

  @override
  Stream<bool> get onConnected => _connectedController.stream;

  @override
  bool get isConnected => _connectedController.value;

  @override
  Future<void> connect() async {
    if (authToken == null) {
      log.w('No token found, aborting MQTT connection!');
      return;
    }

    await _client.connect('user', 'bitnami');
    _connectedController.add(true);
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
    final builder = MqttClientPayloadBuilder();
    builder.addString(payload);
    _client.publishMessage(topic, qosLevel, builder.payload!);
  }

  @override
  void registerMessageListener(EventHandler listener) {
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
  final authService = ref.read(authServiceProvider.notifier);
  final connectivity = ref.read(connectivityProvider);
  final impl = MqttServiceImpl(authService, connectivity);
  return MqttServiceProxy(impl);
});
