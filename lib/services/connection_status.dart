import 'dart:async';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:logging/logging.dart';
import 'package:rxdart/rxdart.dart';
import 'package:skakel_mobile/utils/logging.dart';

final log = Logger('ConnectionStatus');

/// A class that listens to the connectivity stream and provides the current
class ConnectionStatus {
  /// The current connection status.
  bool get online => _online;

  bool _online = false;

  final BehaviorSubject<bool> _controller = BehaviorSubject.seeded(false);

  /// The stream that listens to the connectivity changes.
  Stream<bool> get stream => _controller.stream;

  /// Initialize the connection status listener.
  Future<void> init() async {
    Connectivity().onConnectivityChanged.listen(_handleStatusChange).onError(_handleError);
    await Connectivity().checkConnectivity().then(_handleStatusChange).onError(_handleError);
  }

  void _handleStatusChange(ConnectivityResult result) {
    _online = result == ConnectivityResult.none ? false : true;
    _controller.add(_online);
  }

  void _handleError(Object error, StackTrace stackTrace) {
    log.e('Error: $error', error, stackTrace);
  }
}

final connectivityProvider = Provider<ConnectionStatus>((ref) {
  log.d('Initializing ConnectionStatus...');
  return ConnectionStatus();
});
