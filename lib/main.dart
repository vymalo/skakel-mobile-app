import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:skakel_mobile/app.dart';
import 'package:skakel_mobile/ui/router/router.dart';

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
