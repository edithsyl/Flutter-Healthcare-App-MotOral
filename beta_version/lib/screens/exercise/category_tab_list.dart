import 'package:beta_version/data/exercise_categories_data.dart';
import 'package:beta_version/models/exercise_category_model.dart';
import 'package:beta_version/widgets/exercise_widgets/exercise_card.dart';
import 'package:custom_ui/custom_ui.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

/// The category tabs screen
class CategoryTabsScreen extends StatefulWidget {
  /// Creates a [CategoryTabsScreen].
  CategoryTabsScreen({
    required ExerciseCategory2 selectedCategory,
    required this.parentContext,
    Key? key,
  })  : index = ExerciseCategories.data
            .indexWhere((ExerciseCategory2 f) => f.id == selectedCategory.id),
        super(key: key) {
    assert(index != -1);
  }

  /// The tab index.
  final int index;
  final BuildContext parentContext;

  @override
  _CategoryTabsScreenState createState() => _CategoryTabsScreenState();
}

class _CategoryTabsScreenState extends State<CategoryTabsScreen>
    with TickerProviderStateMixin {
  late final TabController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TabController(
      length: 5, //t_Categories.data.length,
      vsync: this,
      initialIndex: widget.index,
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  void didUpdateWidget(CategoryTabsScreen oldWidget) {
    super.didUpdateWidget(oldWidget);
    _controller.index = widget.index;
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        backgroundColor: AppColorsData.regular().primaryWhite,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Find the right exercise to practice now',
              style: AppTypographyData.greyShades_4().sourceSansProBody,
            ),
            const VerticalGap(num: 20),
            SizedBox(
              width: double.maxFinite,
              height: 40,
              child: TabBar(
                controller: _controller,
                indicator: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  color: AppColorsData.regular().primaryOrange,
                ),
                labelPadding: const EdgeInsets.symmetric(
                  horizontal: 20,
                ),
                indicatorSize: TabBarIndicatorSize.tab,
                indicatorColor: Colors.transparent,
                isScrollable: true,
                labelColor: AppColorsData.regular().primaryWhite,
                labelStyle: AppTypographyData.primaryWhite().quicksandBodySmall,
                unselectedLabelColor: AppColorsData.regular().greyShades_6,
                unselectedLabelStyle:
                    AppTypographyData.greyShades_4().quicksandBodySmall,
                tabs: <Tab>[
                  for (final ExerciseCategory2 c in ExerciseCategories.data)
                    Tab(text: c.name)
                ],
                onTap: (int index) => _tap(context, index),
              ),
            ),
            Flexible(
              child: SizedBox(
                width: double.maxFinite,
                //height: 2000,
                child: TabBarView(
                  controller: _controller,
                  children: <Widget>[
                    for (final ExerciseCategory2 c in ExerciseCategories.data)
                      CategoryView(
                        category: c,
                        parentContext: widget.parentContext,
                      )
                  ],
                ),
              ),
            ),
          ],
        ),
      );

  void _tap(BuildContext context, int index) =>
      context.go('/category/${ExerciseCategories.data[index].id}');
}

/// The category view.
class CategoryView extends StatefulWidget {
  /// Creates a [CategoryView].
  const CategoryView({
    required this.category,
    required this.parentContext,
    Key? key,
  }) : super(key: key);

  /// The category to display.
  final ExerciseCategory2 category;
  final BuildContext parentContext;

  @override
  State<CategoryView> createState() => _CategoryViewState();
}

/// Use the [AutomaticKeepAliveClientMixin] to keep the state, like scroll
/// position and text fields when switching tabs, as well as when popping back
/// from sub screens. To use the mixin override [wantKeepAlive] and call
/// `super.build(context)` in build.
///
/// In this example if you make a web build and make the browser window so low
/// that you have to scroll to see the last person on each category tab, you will
/// see that state is kept when you switch tabs and when you open a person
/// screen and pop back to the category.
class _CategoryViewState extends State<CategoryView>
    with AutomaticKeepAliveClientMixin {
  // Override `wantKeepAlive` when using `AutomaticKeepAliveClientMixin`.
  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    // Call `super.build` when using `AutomaticKeepAliveClientMixin`.
    super.build(context);
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      scrollDirection: Axis.vertical,
      itemCount: widget.category.exercises.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.fromLTRB(0, 0, 0, 16.0),
          child: ExerciseCard2(
            exercise: widget.category.exercises[index],
            color: AppColorsData.regular().paletteColorsList[
                widget.category.exercises[index].category.index],
            ontap: () => widget.parentContext.go(
                '/category/${widget.category.id}/exerciseinfo/${widget.category.exercises[index].id}'),
          ),
        );
      },
    );
  }
}

////////////////////////////////////////////////////////////////////////////////////

