import 'package:app_template/features/Settings/presentation/screens/changeLanguagesScreen.dart';
import 'package:app_template/features/Settings/presentation/screens/settingsScreen.dart';
import 'package:app_template/features/events/presentation/events_screen.dart';
import 'package:app_template/features/main/presentation/screen/main_screen.dart';
import 'package:app_template/features/splash/presentation/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class RouterManager {
  static final GlobalKey<NavigatorState> navigatorKey =
      GlobalKey<NavigatorState>();
  static final GlobalKey<NavigatorState> _shellNavigatorHomeKey =
      GlobalKey<NavigatorState>(debugLabel: 'home');
  static final GlobalKey<NavigatorState> _shellNavigatorMenuKey =
      GlobalKey<NavigatorState>(debugLabel: 'menu');

  static final GoRouter router = GoRouter(
    initialLocation: '/',
    navigatorKey: navigatorKey,
    routes: [
      // 1. Splash Route
      GoRoute(path: '/', builder: (context, state) => SplashScreen()),
      // 3. Main Screen with Nested Navigation (StatefulShellRoute)
      StatefulShellRoute.indexedStack(
        builder: (context, state, navigationShell) {
          return MainScreen(navigationShell: navigationShell);
        },
        branches: [
          // Branch: Home
          StatefulShellBranch(
            navigatorKey: _shellNavigatorHomeKey,
            routes: [
              GoRoute(
                path: '/home',
                builder: (context, state) => EventsScreen(),
              ),
            ],
          ),
          // Branch: Chats
          StatefulShellBranch(
            navigatorKey: _shellNavigatorMenuKey,
            routes: [
              GoRoute(
                path: '/menu',
                builder: (context, state) => SettingsScreen(),
                routes: [
                  GoRoute(
                    path: 'change_lang',
                    builder: (context, state) => ChangeLanguagesScreen(),
                  ),
                  
                ],
              ),
            ],
          ),
        ],
      ),
    ],
  );
}
