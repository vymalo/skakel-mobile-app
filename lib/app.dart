import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:logging/logging.dart';
import 'package:sentry_flutter/sentry_flutter.dart';
import 'package:skakel_mobile/services/init_providers.dart';
import 'package:skakel_mobile/ui/router/router.dart';
import 'package:skakel_mobile/ui/screens/error_screen.dart';
import 'package:skakel_mobile/ui/screens/splash_screen.dart';
import 'package:skakel_mobile/utils/logging.dart';

final log = Logger('MyApp');

/// The main entry point for the application.
class MyApp extends HookConsumerWidget {
  const MyApp({
    super.key,
    AdaptiveThemeMode? savedThemeMode,
  }) : _savedThemeMode = savedThemeMode;

  final AdaptiveThemeMode? _savedThemeMode;

  @override
  Widget build(BuildContext context, ref) {
    final initializer = ref.watch(initProvider);
    final appRouter = ref.watch(appRouterProvider);

    log.d('Starting app...');

    /// The [AdaptiveTheme] widget is used to provide the app with adaptive
    /// theme support. It is used to provide the app with a light and dark
    /// theme, and to provide the app with a theme mode that is either
    /// light, dark or system.
    return AdaptiveTheme(
      debugShowFloatingThemeButton: true,
      light: FlexThemeData.light(
        scheme: FlexScheme.purpleM3,
        pageTransitionsTheme: pageTransition,
      ),
      dark: FlexThemeData.dark(
        scheme: FlexScheme.purpleM3,
        pageTransitionsTheme: pageTransition,
      ),
      initial: _savedThemeMode ?? AdaptiveThemeMode.light,
      builder: (theme, darkTheme) => MaterialApp.router(
        theme: theme,
        darkTheme: darkTheme,
        routerConfig: appRouter.config(
          navigatorObservers: () => [SentryNavigatorObserver()],
        ),
        builder: (context, child) => initializer.when(
          data: (_) {
            log.i('App initialized!');
            return child!;
          },
          loading: () {
            log.d('Initializing app...');
            return const SplashScreen();
          },
          error: (error, stacktrace) {
            log.e('Error initializing app:', error, stacktrace);
            return ErrorScreen(
              error: error,
              stacktrace: stacktrace,
            );
          },
        ),
      ),
    );
  }
}
