import 'package:ansicolor/ansicolor.dart';
import 'package:flutter/foundation.dart';
import 'package:logging/logging.dart';

/// Wrapper for log level.
typedef Wrapper = String Function(String);

/// Map of log level and wrapper.
final _keyMapper = <String, Wrapper>{}
  ..putIfAbsent(Level.OFF.name, () {
    final pen = AnsiPen()..gray(level: 0.2);
    return (msg) => pen('[D] $msg');
  })
  ..putIfAbsent(Level.FINEST.name, () {
    final pen = AnsiPen()..gray(level: 0.3);
    return (msg) => pen('[D] $msg');
  })
  ..putIfAbsent(Level.FINE.name, () {
    final pen = AnsiPen()..gray(level: 0.4);
    return (msg) => pen('[D] $msg');
  })
  ..putIfAbsent(Level.CONFIG.name, () {
    final pen = AnsiPen()..gray(level: 0.5);
    return (msg) => pen('[D] $msg');
  })
  ..putIfAbsent(Level.INFO.name, () {
    final pen = AnsiPen()..blue();
    return (msg) => pen('[I] $msg');
  })
  ..putIfAbsent(Level.WARNING.name, () {
    final pen = AnsiPen()..yellow();
    return (msg) => pen('[W] $msg');
  })
  ..putIfAbsent(Level.SEVERE.name, () {
    final pen = AnsiPen()..red();
    return (msg) => pen('[E] $msg');
  })
  ..putIfAbsent(Level.SHOUT.name, () {
    final pen = AnsiPen()..red(bold: true);
    return (msg) => pen('[E] $msg');
  });

/// Returns a string with a maximum length of 20 characters.
/// Complete with empty spaces if the name is shorter than 20 characters.
/// Add an ellipsis if the name is longer than 20 characters.
String _maxName(String name, {max = 24}) {
  if (name.length > max) {
    return '${name.substring(0, max - 3)}...';
  }
  return name.padRight(max);
}

/// Setup logging.
void setupLogging() {
  Logger.root.level = kDebugMode ? Level.ALL : Level.INFO;
  Logger.root.onRecord.listen((record) {
    print(_keyMapper[record.level.name]!(
        '${record.time}: ${_maxName(record.loggerName)} ${record.message}'));
  });
}

/// Extension for [Logger].
/// Add a method for each log level.
/// The method name is the first letter of the log level.
extension AppLogger on Logger {
  d(Object? message, [Object? error, StackTrace? stackTrace]) {
    config(message, error, stackTrace);
  }

  e(Object? message, [Object? error, StackTrace? stackTrace]) {
    severe(message, error, stackTrace);
  }

  w(Object? message, [Object? error, StackTrace? stackTrace]) {
    warning(message, error, stackTrace);
  }

  i(Object? message, [Object? error, StackTrace? stackTrace]) {
    info(message, error, stackTrace);
  }
}
