export 'package:beta_version/screens/setting_page.dart';
export 'package:go_router/go_router.dart';

export 'screens/auth/_auth_pages.dart';
export 'package:beta_version/screens/bottomnav/_bottomnav_pages.dart';

export 'package:custom_ui/source/pages.dart';
export 'package:custom_ui/source/theme/data.dart';
export 'package:flutter/material.dart';

// final _loggedInRoutes = [
//   GoRoute(
//     name: 'login',
//     path: '/',
//     pageBuilder: (BuildContext context, GoRouterState state) => FadePage(
//         key: state.pageKey,
//         child: const LoginScreen(),
//         time: AppDurationsData.regular().quick),
//   ),
//   GoRoute(
//     name: 'signup',
//     path: '/signup',
//     pageBuilder: (BuildContext context, GoRouterState state) => FadePage(
//         key: state.pageKey,
//         child: RegistrationScreen(),
//         time: AppDurationsData.regular().quick),
//   ),
// ];

// GoRouter appRouter(AuthStatus status) {
//   return GoRouter(
//     refreshListenable: status,
//     // first page shown after flutter run
//     initialLocation: '/',
//     // check if user has logged in, if not: redirect to loginscreen
//     redirect: (state) {
//       final isloggedIn = status == AuthStatus.authenticated;
//       final isLoggingIn = state.location == '/' || state.location == '/signup';
//       if (!isloggedIn && !isLoggingIn) {
//         return '/';
//       }
//       if (isloggedIn && isLoggingIn) {
//         return '/front';
//       }
//       return null;
//     },
//     routes: [
//       GoRoute(
//         name: 'login',
//         path: '/',
//         pageBuilder: (BuildContext context, GoRouterState state) => FadePage(
//             key: state.pageKey,
//             child: const LoginScreen(),
//             time: AppDurationsData.regular().quick),
//       ),
//       GoRoute(
//         name: 'signup',
//         path: '/signup',
//         pageBuilder: (BuildContext context, GoRouterState state) => FadePage(
//             key: state.pageKey,
//             child: RegistrationScreen(),
//             time: AppDurationsData.regular().quick),
//       ),
//       GoRoute(
//         // FIXME: nested routers
//         name: 'front',
//         path: '/front',
//         pageBuilder: (BuildContext context, GoRouterState state) => FadePage(
//             key: state.pageKey,
//             child: const FrontPage(),
//             time: AppDurationsData.regular().quick),
//       ),
//       GoRoute(
//         name: 'exercise',
//         path: '/exercise',
//         pageBuilder: (BuildContext context, GoRouterState state) => FadePage(
//             key: state.pageKey,
//             child: const ExercisePage(),
//             time: AppDurationsData.regular().quick),
//       ),
//       GoRoute(
//         name: 'people',
//         path: '/people',
//         pageBuilder: (BuildContext context, GoRouterState state) => FadePage(
//             key: state.pageKey,
//             child: const PeoplePage(),
//             time: AppDurationsData.regular().quick),
//       ),
//       GoRoute(
//         name: 'news',
//         path: '/news',
//         pageBuilder: (BuildContext context, GoRouterState state) => FadePage(
//             key: state.pageKey,
//             child: const NewsPage(),
//             time: AppDurationsData.regular().quick),
//       ),
//       GoRoute(
//         name: 'profile',
//         path: '/profile',
//         pageBuilder: (BuildContext context, GoRouterState state) => FadePage(
//             key: state.pageKey,
//             child: const ProfilePage(),
//             time: AppDurationsData.regular().quick),
//       ),
//       GoRoute(
//         name: 'setting',
//         path: '/setting',
//         pageBuilder: (BuildContext context, GoRouterState state) => FadePage(
//             key: state.pageKey,
//             child: const SettingPage(),
//             time: AppDurationsData.regular().quick),
//       ),
//     ],
//     errorPageBuilder: (context, state) => MaterialPage(
//       child: Scaffold(
//         body: Center(
//           child: Text(state.error.toString()),
//         ),
//       ),
//     ),
//   );
// }
