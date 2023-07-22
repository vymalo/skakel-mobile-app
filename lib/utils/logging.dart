import 'package:flutter/foundation.dart';
import 'package:logger/logger.dart';

final log = Logger(
  level: kDebugMode ? Level.verbose : Level.warning,
  printer: SimplePrinter(),
  output: MultiOutput(
    [
      ConsoleOutput(),
    ],
  ),
);
