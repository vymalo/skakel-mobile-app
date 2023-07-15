import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:skakel_mobile/screens/error_screen.dart';
import 'package:skakel_mobile/screens/splash_screen.dart';
import 'package:skakel_mobile/services/providers/init_providers.dart';
import 'package:skakel_mobile/services/router/router.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final savedThemeMode = await AdaptiveTheme.getThemeMode();
  final appRouter = AppRouter();

  runApp(
    ProviderScope(
      child: MyApp(
        appRouter: appRouter,
        savedThemeMode: savedThemeMode,
      ),
    ),
  );
}

class MyApp extends HookConsumerWidget {
  const MyApp({
    super.key,
    required AppRouter appRouter,
    AdaptiveThemeMode? savedThemeMode,
  })  : _appRouter = appRouter,
        _savedThemeMode = savedThemeMode;

  final AppRouter _appRouter;
  final AdaptiveThemeMode? _savedThemeMode;

  @override
  Widget build(BuildContext context, ref) {
    final value = ref.watch(initProvider);

    return AdaptiveTheme(
      debugShowFloatingThemeButton: true,
      light: FlexThemeData.light(scheme: FlexScheme.mango, useMaterial3: true),
      dark: FlexThemeData.dark(scheme: FlexScheme.mango, useMaterial3: true),
      initial: _savedThemeMode ?? AdaptiveThemeMode.light,
      builder: (theme, darkTheme) => MaterialApp.router(
        theme: theme,
        darkTheme: darkTheme,
        routerConfig: _appRouter.config(),
        builder: (context, child) => value.when(
          data: (_) => child!,
          loading: () => const SplashScreen(),
          error: (error, stacktrace) => ErrorScreen(
            error: error,
            stacktrace: stacktrace,
          ),
        ),
      ),
    );
  }
}
