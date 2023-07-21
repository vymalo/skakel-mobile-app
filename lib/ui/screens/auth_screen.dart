import 'package:auto_route/auto_route.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter/material.dart';

@RoutePage()
class AuthRoute extends HookWidget {
  const AuthRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Auth Screen'),
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Auth Screen',
            ),
          ],
        ),
      ),
    );
  }
}
