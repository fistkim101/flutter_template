import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';

import '../../barrel.dart';
import '../../presentation/app_version_check/app_version_check_screen.dart';
import '../../presentation/system_maintenance/system_maintenance_screen.dart';
import '../environments/environment.dart';

class RouterConfiguration {
  static GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  static final GoRoute signIn = GoRoute(
    path: RouterLocation.signIn,
    name: RouterLocation.signIn,
    builder: (context, state) {
      return const SignInScreen();
    },
  );

  static final GoRoute systemMaintenance = GoRoute(
    path: RouterLocation.systemMaintenance,
    name: RouterLocation.systemMaintenance,
    builder: (context, state) {
      return const SystemMaintenanceScreen();
    },
  );

  static final GoRoute appVersionUpdate = GoRoute(
    path: RouterLocation.appVersionUpdate,
    name: RouterLocation.appVersionUpdate,
    builder: (context, state) {
      return const AppVersionCheckScreen();
    },
  );

  static final GoRouter router = GoRouter(
    navigatorKey: navigatorKey,
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
