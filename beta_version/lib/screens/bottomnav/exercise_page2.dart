import 'package:beta_version/app_router.dart';
import 'package:beta_version/logic/blocs/export_blocs.dart';
import 'package:beta_version/widgets/exercise_card.dart';
import 'package:custom_ui/custom_ui.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:simple_animations/timeline_tween/prop.dart';

import '../../models/category_model.dart';
import '../../models/exercise_model.dart';
import '../../widgets/category_tags.dart';
import '../../widgets/top_app_bar.dart';

class MyTabBar extends StatefulWidget {
  @override
  _MyTabBarState createState() => _MyTabBarState();
}

class _MyTabBarState extends State<MyTabBar>
    with SingleTickerProviderStateMixin {
  // define your tab controller here
  late TabController _tabController;
  late List<Exercise> _allExercises;
  late List<Exercise> filterdExercises;

  final List<Tab> categoryTabs = [
    Tab(
      text: 'Cheek',
    ),
    Tab(
      text: 'Jaw',
    ),
    Tab(
      text: 'Lip',
    ),
    Tab(
      text: 'Tongue',
    ),
  ];

  final List<Color> colorsList = [
    const Color.fromARGB(255, 255, 190, 174), // light pink
    const Color.fromARGB(255, 174, 191, 255), // light blue
    const Color.fromARGB(255, 209, 193, 255), // light purple
    AppColorsData.regular().orangeTints_4, // light purple
  ];

  void _handleTabSelection() {
    // if (_tabController.indexIsChanging) {
    //   switch (_tabController.index) {
    //     case 0:
    //       filterData('all');
    //       break;
    //     case 1:
    //       filterData('experienceConsulting');
    //       break;
    //     case 2:
    //       filterData('frontOfficeTransformation');
    //       break;
    //   }
    // }
  }

  void _filterExercises(value) {
    // filteredExercises =
    //     _allExercises.where((exercise) => exercise['name'] == 'Cheek');
  }

  @override
  void initState() {
    // initialise your tab controller here
    _tabController = TabController(
      length: categoryTabs.length,
      initialIndex: 0,
      vsync: this,
    );
    _allExercises = filterdExercises = Exercise.allExercises;
    super.initState();
    _tabController.addListener(_handleTabSelection);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColorsData.regular().primaryWhite,
      padding: EdgeInsets.symmetric(horizontal: AppSpacingData.regular().x3),
      child: SingleChildScrollView(
        physics: const ScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              width: double.infinity,
              height: 35,
              child: Align(
                alignment: Alignment.topLeft,
                child: TabBar(
                  controller: _tabController,
                  indicator: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    color: Colors.orange,
                  ),
                  labelPadding: const EdgeInsets.symmetric(
                    horizontal: 20,
                  ),
                  indicatorSize: TabBarIndicatorSize.tab,
                  indicatorColor: Colors.transparent,
                  isScrollable: true,
                  labelColor: AppColorsData.regular().primaryWhite,
                  labelStyle:
                      AppTypographyData.primaryWhite().quicksandBodySmall,
                  unselectedLabelColor: AppColorsData.regular().greyShades_6,
                  unselectedLabelStyle:
                      AppTypographyData.greyShades_5().quicksandBodySmall,
                  tabs: categoryTabs,
                ),
              ),
            ),
            Container(
                width: double.maxFinite,
                height: 300,
                child: TabBarView(
                  controller: _tabController,
                  children: [
                    ListView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      scrollDirection: Axis.vertical,
                      itemCount: Exercise.allExercises.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8),
                          child: ExerciseCard2(
                            exercise: Exercise.allExercises[index],
                            color: colorsList[index % colorsList.length],
                          ),
                        );
                      },
                    ),
                  ],
                )),
          ],
          // children: [
          //   Text('hi'),
          //   Text('hi2'),
          //   Text('hi3'),
          //   Text('hi4'),
          // ],
        ),
      ),
      //   ExercisesList(
      //     exercises: Exercise.allExercises,
      //   )
      // ],
    );
  }
}
