import 'package:logger/logger.dart';

final log = Logger(
  printer: SimplePrinter(),
  output: MultiOutput(
    [
      ConsoleOutput(),
    ],
  ),
);
