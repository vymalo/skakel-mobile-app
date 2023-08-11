import 'package:mqtt_client/mqtt_client.dart';
import 'package:skakel_mobile/services/mqtt/mqtt_service.dart';

class MqttServiceDelegate implements MqttService {
  final MqttService delegate;

  MqttServiceDelegate(this.delegate);

  @override
  Future<void> connect() {
    return delegate.connect();
  }

  @override
  Future<void> disconnect() {
    return delegate.disconnect();
  }

  @override
  bool get isConnected => delegate.isConnected;

  @override
  Stream<bool> get onConnected => delegate.onConnected;

  @override
  Stream<String> get onMessageReceived => delegate.onMessageReceived;

  @override
  Future<void> publish(String topic, String payload,
      {MqttQos qosLevel = MqttQos.atLeastOnce}) {
    return delegate.publish(topic, payload, qosLevel: qosLevel);
  }

  @override
  void registerMessageListener(EventHandler listener) {
    delegate.registerMessageListener(listener);
  }

  @override
  Future<void> subscribe(String topic,
      {MqttQos qosLevel = MqttQos.atLeastOnce}) {
    return delegate.subscribe(topic, qosLevel: qosLevel);
  }

  @override
  void unregisterMessageListener(EventHandler listener) {
    delegate.unregisterMessageListener(listener);
  }
}
