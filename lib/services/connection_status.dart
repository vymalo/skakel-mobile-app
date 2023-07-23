import 'dart:async';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:logging/logging.dart';
import 'package:skakel_mobile/utils/logging.dart';

final log = Logger('ConnectionStatus');

class ConnectionStatus {
  bool get online => _online;

  bool _online = false;

  final StreamController<bool> _controller = StreamController<bool>.broadcast();

  Stream<bool> get stream => _controller.stream;

  ConnectionStatus() {
    _init();
  }

  Future<void> _init() async {
    Connectivity().onConnectivityChanged.listen((result) {
      _online = result == ConnectivityResult.none ? false : true;
      _controller.add(_online);
    });
  }
}

final connectivityProvider = Provider<ConnectionStatus>((ref) {
  log.d('Initializing ConnectionStatus...');
  return ConnectionStatus();
});
