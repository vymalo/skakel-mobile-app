import 'dart:math';

import 'package:logging/logging.dart';
import 'package:skakel_mobile/utils/logging.dart';

class UniqueIdGenerator {
  final String _pushChars =
      '0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ_abcdefghijklmnopqrstuvwxyz';
  int _lastPushTime = 0;
  final Random _rand = Random();
  final List<int> _lastRandChars = List<int>.filled(12, 0);
  final _log = Logger('UniqueIdGenerator');

  static UniqueIdGenerator? _instance;

  UniqueIdGenerator._();

  factory UniqueIdGenerator() => _instance ??= UniqueIdGenerator._();

  String getId({int length = 20}) {
    int now = DateTime.now().millisecondsSinceEpoch;
    bool duplicateTime = (now == _lastPushTime);
    _lastPushTime = now;
    List<String> idChars = List<String>.filled(length, '');

    for (int i = 7; i >= 0; i--) {
      idChars[i] = _pushChars[now % 64];
      now ~/= 64;
    }
    if (now != 0) {
      _log.d("Id should be unique");
    }

    if (!duplicateTime) {
      for (int i = 0; i < 12; i++) {
        _lastRandChars[i] = _rand.nextInt(64);
      }
    } else {
      for (int i = 11; i >= 0; i--) {
        if (_lastRandChars[i] == 63) {
          _lastRandChars[i] = 0;
        } else {
          _lastRandChars[i]++;
          break;
        }
      }
    }

    for (int i = 0; i < 12; i++) {
      idChars[8 + i] = _pushChars[_lastRandChars[i]];
    }

    return idChars.join();
  }
}

final generator = UniqueIdGenerator();
