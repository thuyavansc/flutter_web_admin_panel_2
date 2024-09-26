
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../screens/main/main_screen.dart';
import '../../screens/settings/settings_screen.dart';

class AppRouter {
  // Define static route names as constants
  static const String home = '/';
  static const String settings = '/settings';

  // GoRouter instance
  static GoRouter router = GoRouter(
    initialLocation: home,
    routes: [
      GoRoute(
        path: home,
        builder: (context, state) => MainScreen(),
      ),

      GoRoute(
        path: settings,
        builder: (context, state) => SettingsScreen(),
      ),
    ],
  );

  // Navigation helpers for static and dynamic routes
  static void goToHome(BuildContext context) {
    context.go(home);
  }

  static void goToSettings(BuildContext context) {
    context.go(settings);
  }

}
