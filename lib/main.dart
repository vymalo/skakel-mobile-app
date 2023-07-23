import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:sentry_flutter/sentry_flutter.dart';
import 'package:sentry_logging/sentry_logging.dart';
import 'package:skakel_mobile/app.dart';
import 'package:skakel_mobile/ui/router/router.dart';
import 'package:skakel_mobile/utils/env.dart';
import 'package:skakel_mobile/utils/logging.dart';

/// The main entry point for the application.
void main() async {
  setupLogging();

  await SentryFlutter.init(
    (options) {
      options.dsn = Env.sentryDsn;
      options.tracesSampleRate = 1.0;
      options.addIntegration(LoggingIntegration());
      options.attachScreenshot = true;
      options.attachViewHierarchy = true;
    },
    appRunner: () async {
      WidgetsFlutterBinding.ensureInitialized();

      final savedThemeMode = await AdaptiveTheme.getThemeMode();
      final appRouter = AppRouter();

      runApp(
        ProviderScope(
          child: SentryScreenshotWidget(
            child: MyApp(
              appRouter: appRouter,
              savedThemeMode: savedThemeMode,
            ),
          ),
        ),
      );
    },
  );
}
