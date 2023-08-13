import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:skakel_mobile/services/auth/auth_impl.dart';

@RoutePage()
class AuthScreen extends HookConsumerWidget {
  const AuthScreen({super.key});

  @override
  Widget build(BuildContext context, ref) {
    final authState = ref.watch(authServiceProvider).isLoggedIn;
    final authService = ref.watch(authServiceProvider.notifier);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Auth Screen'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Auth Screen',
            ),
            ElevatedButton(
              onPressed: authService.login,
              child: const Text(
                'Login',
              ),
            ),
            Text(
              authState ? 'Authenticated' : 'Not Authenticated',
            ),
            ElevatedButton(
              onPressed: () {
                context.router.pushNamed('/settings');
              },
              child: const Text(
                'Settings',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
