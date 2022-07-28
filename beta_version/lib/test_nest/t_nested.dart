import 'package:beta_version/screens/exercise/category_tab_list.dart';
import 'package:beta_version/screens/exercise/exercise_info_page.dart';
import 'package:custom_ui/custom_ui.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 't_data.dart';

///
class ExerciseApp extends StatelessWidget {
  /// Creates an [App].
  ExerciseApp({
    Key? key,
    required this.parentContext,
  }) : super(key: key);

  BuildContext parentContext;

  /// The title of the app.
  static const String title = 'GoRouter Example: Nested Navigation';

  final List<GoRoute> exRoutes = <GoRoute>[
    GoRoute(
      path: '/',
      redirect: (_) => '/category/${t_Categories.data[0].id}',
    ),
    GoRoute(
      path: '/category/:cid',
      pageBuilder: (BuildContext context, GoRouterState state) => FadePage(
          key: state.pageKey,
          child: CategoryTabsScreen(
            key: state.pageKey,
            parentContext: context,
            selectedCategory: t_Categories.t_category(state.params['cid']!),
          ),
          time: AppDurationsData.regular().quick),
    ),
  ];

  late final GoRouter _router = GoRouter(
    debugLogDiagnostics: true,
    routes: exRoutes,
    initialLocation: '/category/${t_Categories.data[0].id}',
    errorPageBuilder: (context, state) => MaterialPage(
      child: Scaffold(
        body: Center(
          child: Text(state.error.toString()),
        ),
      ),
    ),
  );

  @override
  Widget build(BuildContext context) => MaterialApp.router(
        routeInformationProvider: _router.routeInformationProvider,
        routeInformationParser: _router.routeInformationParser,
        routerDelegate: _router.routerDelegate,
        title: 'exercise title',
        theme: ThemeData(
          primaryColor: AppColorsData.regular().primaryOrange,
          backgroundColor: AppColorsData.regular().primaryWhite,
          inputDecorationTheme: InputDecorationTheme(
              labelStyle: AppTypographyData.greyShades_3().sourceSansProBody,
              hintStyle: AppTypographyData.greyShades_3().sourceSansProBody,
              contentPadding: const EdgeInsets.fromLTRB(2, 0, 0, 0),
              border: UnderlineInputBorder(
                borderSide: BorderSide(
                  color: AppColorsData.regular().greyTints_2,
                  width: 306.0,
                  style: BorderStyle.solid,
                ),
              )),
        ),
      );
}