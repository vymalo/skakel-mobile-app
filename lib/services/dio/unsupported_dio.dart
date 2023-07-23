import 'package:dio/dio.dart';

/// Returns a [Dio] instance for the current platform.
Dio getDio() => throw UnsupportedError('No suitable database implementation was found on this platform.');