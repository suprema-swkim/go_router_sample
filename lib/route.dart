import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:go_router_sample/screen/detail_screen1.dart';
import 'package:go_router_sample/screen/detail_screen2.dart';
import 'package:go_router_sample/screen/transition_screen.dart';
import 'package:go_router_sample/screen/side/side_body_screen1.dart';
import 'package:go_router_sample/screen/side/side_body_screen2.dart';
import 'package:go_router_sample/screen/side/side_body_screen3.dart';
import 'package:go_router_sample/screen/side/side_tap_screen.dart';
import 'package:go_router_sample/screen/extra_param_screen.dart';
import 'package:go_router_sample/screen/home_screen.dart';
import 'package:go_router_sample/screen/path_param_screen.dart';
import 'package:go_router_sample/screen/query_param_screen.dart';

final GlobalKey<NavigatorState> _rootNavigatorKey = GlobalKey<NavigatorState>(debugLabel: 'root');
final GlobalKey<NavigatorState> _shellNavigatorKey = GlobalKey<NavigatorState>(debugLabel: 'shell');

// GoRouter configuration
final router = GoRouter(
  navigatorKey: _rootNavigatorKey,
  initialLocation: '/',
  redirect: (context, state) {
    // print('### ${state.uri.path}'); // ### /details1/screenWithPathParam/1111
    // print('### ${state.fullPath}'); // ### /details1/screenWithPathParam/:userId
    if (state.fullPath == '/details2') {
      return '/details1';
    }
    return null;
  },
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const HomeScreen(),
      routes: [
        // 일반
        GoRoute(
          path: 'details1',
          builder: (context, state) => const DetailsScreen1(),
          routes: [
            GoRoute(
              path: 'screenWithPathParam/:userId',
              builder: (context, state) {
                String userId = state.pathParameters['userId'] ?? '';
                return PathParamScreen(userId: userId);
              },
            ),
            GoRoute(
                path: 'screenWithQueryParam',
                builder: (context, state) {
                  String userId = state.uri.queryParameters['userId'] ?? '';
                  return QueryParamScreen(userId: userId);
                }),
            GoRoute(
              path: 'screenWithExtraParam',
              builder: (context, state) {
                var userId = (state.extra ?? '') as String;
                return ExtraParamScreen(userId: userId);
              },
              redirect: (context, state) {
                String? userId = state.extra as String?;
                if (userId == null) {
                  return '/';
                } else {
                  return null;
                }
              },
            ),
          ],
        ),
        GoRoute(
          path: 'details2',
          builder: (context, state) => const DetailsScreen2(),
        ),
      ],
    ),
    // 애니메이션
    GoRoute(
      path: '/transition',
      pageBuilder: (context, state) {
        return CustomTransitionPage(
          key: state.pageKey,
          child: const TransitionScreen(),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            return FadeTransition(
              opacity: CurveTween(curve: Curves.easeInOutCirc).animate(animation),
              child: child,
            );
          },
        );
      },
    ),
    // 쉘 라우트
    ShellRoute(
      navigatorKey: _shellNavigatorKey,
      builder: (BuildContext context, GoRouterState state, Widget child) {
        return SideTapScreen(child: child);
      },
      routes: [
        GoRoute(
          path: '/sideBody1',
          builder: (context, state) => const SidebodyScreen1(),
        ),
        GoRoute(
          path: '/sideBody2',
          builder: (context, state) => const SidebodyScreen2(),
        ),
        GoRoute(
          path: '/sideBody3',
          builder: (context, state) => const SidebodyScreen3(),
        ),
      ],
    ),
  ],
);
