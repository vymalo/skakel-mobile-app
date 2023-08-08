import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:skakel_mobile/services/auth/auth.dart';
import 'package:skakel_mobile/services/auth/auth_impl.dart';
import 'package:skakel_mobile/ui/router/guards/auth_guard.dart';
import 'package:skakel_mobile/ui/router/router.gr.dart';

const pageTransition = PageTransitionsTheme(builders: {
  TargetPlatform.iOS: NoShadowCupertinoPageTransitionsBuilder(),
  TargetPlatform.android: FadeUpwardsPageTransitionsBuilder(),
});

@AutoRouterConfig()
class AppRouter extends $AppRouter implements AutoRouteGuard {
  final AuthService authService;

  AppRouter(this.authService);

  @override
  List<AutoRoute> get routes => [
        RedirectRoute(path: '/', redirectTo: '/home'),
        AutoRoute(
          page: HomeRoute.page,
          path: '/home',
          guards: [
            AuthGuard(authService),
          ],
        ),
        AutoRoute(page: AuthRoute.page, path: '/auth'),
        AutoRoute(
          page: SettingsRoute.page,
          path: '/settings',
        ),
      ];

  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) {
    resolver.next(true);
  }
}

final appRouterProvider = Provider<AppRouter>((ref) {
  final authService = ref.watch(authServiceProvider.notifier);
  return AppRouter(authService);
});
