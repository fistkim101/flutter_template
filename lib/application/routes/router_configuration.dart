import 'package:go_router/go_router.dart';

import '../../barrel.dart';
import '../environments/environment.dart';

class RouterConfiguration {
  static final GoRoute signIn = GoRoute(
    path: RouterLocation.signIn,
    name: RouterLocation.signIn,
    builder: (context, state) {
      return const SignInScreen();
    },
  );

  static final GoRouter router = GoRouter(
    initialLocation: RouterLocation.splash,
    debugLogDiagnostics: Environment.isProduction ? false : true,
    routes: [
      GoRoute(
        path: RouterLocation.splash,
        name: RouterLocation.splash,
        builder: (context, state) {
          return const SplashScreen();
        },
        routes: [
          signIn,
        ],
      ),
    ],
  );
}
