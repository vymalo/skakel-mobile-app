import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class ErrorScreen extends HookWidget {
  final Object error;
  final StackTrace? stacktrace;

  const ErrorScreen({
    super.key,
    required this.error,
    required this.stacktrace,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('App Error'),
            const SizedBox(height: 20),
            Text('$error'),
            const SizedBox(height: 20),
            Text('$stacktrace'),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
