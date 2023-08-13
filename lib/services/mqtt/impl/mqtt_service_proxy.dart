import 'package:logging/logging.dart';
import 'package:meta/meta.dart';
import 'package:mqtt_client/mqtt_client.dart';
import 'package:skakel_mobile/services/mqtt/mqtt_service.dart';
import 'package:skakel_mobile/utils/logging.dart';

final log = Logger('MqttServiceDelegate');

class MqttServiceProxy implements MqttService {
  @protected
  final MqttService delegate;

  MqttServiceProxy(this.delegate);

  @override
  Future<void> connect() async {
    try {
      log.d('Connecting to MQTT broker...');
      await delegate.connect();
    } catch (e) {
      log.e('MQTT Connection error: $e');
    }
  }

  @override
  Future<void> disconnect() async {
    try {
      log.d('Disconnecting from MQTT broker...');
      await delegate.disconnect();
    } catch (e) {
      log.e('MQTT Disconnection error: $e');
    }
  }

  @override
  bool get isConnected => delegate.isConnected;

  @override
  Stream<bool> get onConnected => delegate.onConnected;

  @override
  Stream<String> get onMessageReceived => delegate.onMessageReceived;

  @override
  Future<void> publish(String topic, String payload,
      {MqttQos qosLevel = MqttQos.atLeastOnce}) async {
    try {
      log.d('Publishing message to topic $topic...');
      await delegate.publish(topic, payload, qosLevel: qosLevel);
      log.d('Message published!');
    } catch (e) {
      log.e('MQTT Publish error: $e');
    }
  }

  @override
  void registerMessageListener(EventHandler listener) {
    try {
      log.d('Registering message listener...');
      delegate.registerMessageListener(listener);
      log.d('Message listener registered!');
    } catch (e) {
      log.e('MQTT Message listener registration error: $e');
    }
  }

  @override
  Future<void> subscribe(String topic,
      {MqttQos qosLevel = MqttQos.atLeastOnce}) async {
    try {
      log.d('Subscribing to topic $topic...');
      await delegate.subscribe(topic, qosLevel: qosLevel);
    } catch (e) {
      log.e('MQTT Subscription error: $e');
      return Future.error(e);
    }
  }

  @override
  void unregisterMessageListener(EventHandler listener) {
    try {
      log.d('Unregistering message listener...');
      delegate.unregisterMessageListener(listener);
      log.d('Message listener unregistered!');
    } catch (e) {
      log.e('MQTT Message listener unregistration error: $e');
    }
  }
}
