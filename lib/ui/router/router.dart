import 'package:auto_route/auto_route.dart';
import 'package:skakel_mobile/ui/router/router.gr.dart';

@AutoRouterConfig()
class AppRouter extends $AppRouter {
  @override
  List<AutoRoute> get routes => [
        RedirectRoute(path: '/', redirectTo: '/home'),
        AutoRoute(page: HomeRoute.page, path: '/home'),
        AutoRoute(page: AuthRoute.page, path: '/auth'),
        AutoRoute(page: SettingsRoute.page, path: '/settings'),
      ];
}
