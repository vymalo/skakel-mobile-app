import 'dart:async';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ConnectionStatus {
  bool get online => _online;

  bool _online = false;

  final StreamController<bool> _controller = StreamController<bool>.broadcast();

  Stream<bool> get stream => _controller.stream;

  ConnectionStatus() {
    _init();
  }

  Future<void> _init() async {
    Connectivity().onConnectivityChanged.listen((ConnectivityResult result) {
      if (result == ConnectivityResult.none) {
        _online = false;
      } else {
        _online = true;
      }

      _controller.add(_online);
    });
  }
}

final connectivityProvider =
    Provider<ConnectionStatus>((ref) => ConnectionStatus());
