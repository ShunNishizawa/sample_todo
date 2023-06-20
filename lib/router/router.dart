import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:sample_todo_app/Screens/detail_screen/detail_screen.dart';
import 'package:sample_todo_app/Screens/home_screen/home_screen.dart';
import 'package:sample_todo_app/Screens/notification_screen/notification_screen.dart';

import '../Screens/base_screen.dart';
import '../Screens/setting_screen/setting_screen.dart';

final GlobalKey<NavigatorState> _rootNavigatorKey =
    GlobalKey<NavigatorState>(debugLabel: 'root');
final GlobalKey<NavigatorState> _shellNavigatorKey =
    GlobalKey<NavigatorState>(debugLabel: 'shell');

final GoRouter router =
    GoRouter(navigatorKey: _rootNavigatorKey, initialLocation: '/', routes: [
  ShellRoute(
      navigatorKey: _shellNavigatorKey,
      builder: (context, state, child) =>
          BaseScreen(key: state.pageKey, child: child),
      routes: <RouteBase>[
        GoRoute(
          name: 'home',
          path: '/',
          pageBuilder: (context, state) {
            return const NoTransitionPage(child: HomeScreen());
          },
          routes: [
            GoRoute(
                parentNavigatorKey: _shellNavigatorKey,
                path: 'itemDetail',
                name: 'detail',
                pageBuilder: (context, state) {
                  return NoTransitionPage(
                      child: DetailScreen(
                    key: state.pageKey,
                  ));
                })
          ],
        ),
        GoRoute(
          name: 'notification',
          path: '/notification',
          pageBuilder: (context, state) {
            return const NoTransitionPage(child: NotificationScreen());
          },
        ),
        GoRoute(
          name: 'Setting',
          path: '/setting',
          pageBuilder: (context, state) {
            return NoTransitionPage(
                child: SettingScreen(
              key: state.pageKey,
            ));
          },
        ),
      ]),
]);
