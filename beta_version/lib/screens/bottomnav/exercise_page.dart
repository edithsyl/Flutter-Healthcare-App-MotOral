import 'package:beta_version/data/exercise_categories_data.dart';
import 'package:beta_version/models/exercise_category_model.dart';
import 'package:beta_version/models/exercise_model.dart';
import 'package:beta_version/models/exercise_model_new.dart';
import 'package:beta_version/screens/exercise/category_tab_list.dart';
import 'package:beta_version/screens/exercise/exercise_info_page.dart';
import 'package:beta_version/screens/exercise/exercise_app.dart';
import 'package:beta_version/screens/exercise/exercise_info_page_short.dart';
import 'package:beta_version/widgets/exercise_widgets/exercise_card.dart';

import 'package:beta_version/widgets/top_app_bar.dart';
import 'package:custom_ui/custom_ui.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ExercisePage extends StatelessWidget {
  ExercisePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<GoRoute> _exRoutes = [
      GoRoute(
        path: '/category/:cid',
        pageBuilder: (BuildContext context, GoRouterState state) => FadePage(
            key: state.pageKey,
            child: CategoryTabsScreen(
              parentContext: context,
              key: state.pageKey,
              selectedCategory:
                  ExerciseCategories.category(state.params['cid']!),
            ),
            time: AppDurationsData.regular().quick),
        routes: <GoRoute>[
          GoRoute(
            path: 'exerciseinfo/:eid',
            pageBuilder: (BuildContext context, GoRouterState state) {
              final ExerciseCategory2 category =
                  ExerciseCategories.category(state.params['cid']!);
              final Exercise_new exercise =
                  category.exercise(state.params['eid']!);
              return FadePage(
                key: state.pageKey,
                child: ThisShortExerciseScreen(
                  category: category,
                  exercise: exercise,
                ),
                time: AppDurationsData.regular().quick,
              );
            },
          ),
        ],
      ),
    ];
    final exRouter = GoRouter(
      debugLogDiagnostics: true,
      initialLocation: '/category/${ExerciseCategories.data[0].id}',
      routes: _exRoutes,
      errorPageBuilder: (context, state) => MaterialPage(
        child: Scaffold(
          body: Center(
            child: Text(state.error.toString()),
          ),
        ),
      ),
    );
    return Container(
      color: AppColorsData.regular().primaryOrange,
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const Padding(
              padding: EdgeInsets.fromLTRB(24, 56, 24, 24),
              child: AppBarContentExercise(
                xpNum:
                    0, //FIXME: firebase should keep count, retrieve the correct number from cloud
                streakNum: 0,
              ),
            ),
            //////////////
            Container(
              width: double.infinity,
              //height: MediaQuery.of(context).size.height,
              padding: const EdgeInsets.fromLTRB(32, 40, 32, 32),
              decoration: BoxDecoration(
                color: AppColorsData.regular().primaryWhite,
                borderRadius: const AppRadiusData.regular()
                    .asBorderRadius()
                    .verticalRegular,
              ),
              child: SingleChildScrollView(
                physics: const NeverScrollableScrollPhysics(),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    ExerciseCard(
                      exercise:
                          ExerciseCategoryTempAll.category('a1').exercise('b1'),
                      color: AppColorsData.regular().paletteColorsList[1],
                      ontap: () => context.goNamed('allexercise'),
                    ),
                    const VerticalGap(num: 40),
                    Text(
                      'Start here',
                      style: AppTypographyData.greyShades_6().quicksandBody,
                    ),
                    const VerticalGap(num: 16),
                    ConstrainedBox(
                      constraints: BoxConstraints.loose(
                        Size(
                            MediaQuery.of(context).size.height * 0.9,
                            MediaQuery.of(context).size.height *
                                0.7), //Size(432.0, 800.0),
                      ),
                      child: WillPopScope(
                        child: ExerciseApp(
                          parentContext: context,
                        ),
                        onWillPop: () async {
                          return false;
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
