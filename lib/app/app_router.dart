import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:soldnet/app/app.dart';
import 'package:soldnet/presentation/pages/chat_page.dart' show ChatPage;
import 'package:soldnet/presentation/pages/home_page.dart';
import 'package:soldnet/presentation/pages/profile_page.dart';
import 'package:soldnet/presentation/widgets/app/nav_bar/app_nav_bar.dart';

final GlobalKey<NavigatorState> rootNavigatorKey = GlobalKey<NavigatorState>();

class ScreenPaths {
  static String redirection = '/';
  static String home = '/home';
  static String chat = '/chat';
  static String profile = '/profile';
}

final GoRouter router = GoRouter(
  initialLocation: ScreenPaths.redirection,
  navigatorKey: rootNavigatorKey,
  debugLogDiagnostics: kDebugMode,
  routes: [
    AppRoute(ScreenPaths.redirection, (_) => const RedirectionPage()),
    //A route to show bottomNavBar(menu) on main screens
    ShellRoute(
      builder: (context, state, child) {
        return Scaffold(
          extendBody: true,
          body: child,
          bottomNavigationBar: AppNavBar(),
        );
      },
      routes: [
        AppRoute(ScreenPaths.home, (_) => HomePage(), noTransition: true),
        AppRoute(ScreenPaths.chat, (_) => ChatPage(), noTransition: true),
        AppRoute(ScreenPaths.profile, (_) => ProfilePage(), noTransition: true),
      ],
    ),
  ],
);

class AppRoute extends GoRoute {
  final bool useFade;
  final bool noTransition;
  final bool isTransparent;

  AppRoute(
    String path,
    Widget Function(GoRouterState s) builder, {
    List<GoRoute> routes = const [],
    this.useFade = true,
    this.noTransition = false,
    this.isTransparent = false,
    String? Function(GoRouterState)? routeRedirect,
    bool fullScreenDialog = false,
  }) : super(
          path: path,
          routes: routes,
          pageBuilder: (context, state) {
            final child = builder(state);

            if (isTransparent) {
              return CustomTransitionPage(
                opaque: false,
                barrierDismissible: true,
                barrierColor: Colors.transparent,
                child: child,
                transitionsBuilder:
                    (context, animation, secondaryAnimation, child) {
                  return FadeTransition(opacity: animation, child: child);
                },
              );
            }

            if (noTransition) {
              return NoTransitionPage(key: state.pageKey, child: child);
            }

            if (useFade && Platform.isAndroid) {
              return CustomTransitionPage(
                fullscreenDialog: fullScreenDialog,
                barrierColor: Colors.white,
                key: state.pageKey,
                child: builder(state),
                transitionsBuilder:
                    (context, animation, secondaryAnimation, child) {
                  return FadeTransition(opacity: animation, child: child);
                },
              );
            }
            return CupertinoPage(key: state.pageKey, child: child);
          },
        );
}
