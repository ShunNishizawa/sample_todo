import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:sample_todo_app/Screens/detail_screen/detail_screen.dart';
import 'package:sample_todo_app/Screens/home_screen/home_screen.dart';

final GoRouter router = GoRouter(initialLocation: '/', routes: [
  GoRoute(
      name: 'home',
      path: '/',
      pageBuilder: (context, state) =>
          MaterialPage(key: state.pageKey, child: const HomeScreen())),
  GoRoute(
      name: 'detail',
      path: '/detail',
      pageBuilder: (context, state) =>
          MaterialPage(key: state.pageKey, child: const DetailScreen()))
]);
