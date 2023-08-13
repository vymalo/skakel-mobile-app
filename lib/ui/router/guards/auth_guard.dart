import 'package:auto_route/auto_route.dart';
import 'package:skakel_mobile/services/auth/auth.dart';
import 'package:skakel_mobile/ui/router/router.gr.dart';

class AuthGuard extends AutoRouteGuard {
  final AuthService authService;
  bool _isAuthenticated = false;

  AuthGuard(this.authService) {
    authService.addListener((state) {
      _isAuthenticated = state.isLoggedIn;
    });
  }

  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) {
    if (_isAuthenticated) {
      // if user is authenticated we continue
      resolver.next(true);
    } else {
      // we redirect the user to our login page
      // tip: use resolver.redirect to have the redirected route
      // automatically removed from the stack when the resolver is completed
      resolver.redirect(const AuthRoute());
    }
  }
}
