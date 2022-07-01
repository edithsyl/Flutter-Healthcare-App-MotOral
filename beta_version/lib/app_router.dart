import 'package:go_router/go_router.dart';

import 'screens/auth/_auth_pages.dart';
import 'package:beta_version/screens/bottomnav/_bottomnav_pages.dart';

import 'package:custom_ui/source/pages.dart';
import 'package:custom_ui/source/theme/data.dart';
import 'package:flutter/material.dart';

final appRouter = GoRouter(
  initialLocation: '/front',
  // redirect: (state) {
  //   final loggedIn = LoginInfo.isLoggedIn;
  //   final isLogging = state.location == '/';
  //   if (!loggedIn && !isLogging) {
  //     return '/';
  //   }
  // },
  routes: [
    GoRoute(
      name: 'login',
      path: '/',
      pageBuilder: (BuildContext context, GoRouterState state) => FadePage(
          key: state.pageKey,
          child: LoginScreen(),
          time: AppDurationsData.regular().quick),
    ),
    GoRoute(
      name: 'signup',
      path: '/signup',
      pageBuilder: (BuildContext context, GoRouterState state) => FadePage(
          key: state.pageKey,
          child: RegistrationScreen(),
          time: AppDurationsData.regular().quick),
    ),
    GoRoute(
        name: 'front',
        path: '/front',
        pageBuilder: (BuildContext context, GoRouterState state) => FadePage(
            key: state.pageKey,
            child: FrontPage(),
            time: AppDurationsData.regular().quick),
        routes: [
          // GoRoute(
          //     name: 'b_navPages',
          //     path: ':b_navId',
          //     pageBuilder: (BuildContext context, GoRouterState state) {
          //       final String screen = state.params['screen']!;
          //       return FadePage(
          //           key: state.pageKey,
          //           child: TabScreen(screen: screen),
          //           time: AppDurationsData.regular().quick);
          //     })
        ]),
    GoRoute(
      name: 'exercise',
      path: '/exercise',
      pageBuilder: (BuildContext context, GoRouterState state) => FadePage(
          key: state.pageKey,
          child: ExercisePage(),
          time: AppDurationsData.regular().quick),
    ),
    GoRoute(
      name: 'people',
      path: '/people',
      pageBuilder: (BuildContext context, GoRouterState state) => FadePage(
          key: state.pageKey,
          child: PeoplePage(),
          time: AppDurationsData.regular().quick),
    ),
    GoRoute(
      name: 'news',
      path: '/news',
      pageBuilder: (BuildContext context, GoRouterState state) => FadePage(
          key: state.pageKey,
          child: NewsPage(),
          time: AppDurationsData.regular().quick),
    ),
    GoRoute(
      name: 'profile',
      path: '/profile',
      pageBuilder: (BuildContext context, GoRouterState state) => FadePage(
          key: state.pageKey,
          child: ProfilePage(),
          time: AppDurationsData.regular().quick),
    ),
  ],
  errorPageBuilder: (context, state) => MaterialPage(
    child: Scaffold(
      body: Center(
        child: Text(state.error.toString()),
      ),
    ),
  ),
);
