import 'package:beta_version/data/news_categories_data.dart';
import 'package:beta_version/models/news_category_model.dart';
import 'package:beta_version/widgets/news_card.dart';
import 'package:custom_ui/custom_ui.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

/// The category tabs screen
class NewsCategoryTabsScreen extends StatefulWidget {
  /// Creates a [NewsCategoryTabsScreen].
  NewsCategoryTabsScreen({
    required NewsCategory selectedCategory,
    required this.parentContext,
    Key? key,
  })  : index = NewsCategories.data
            .indexWhere((NewsCategory f) => f.id == selectedCategory.id),
        super(key: key) {
    assert(index != -1);
  }

  /// The tab index.
  final int index;
  final BuildContext parentContext;

  @override
  _CategoryTabsScreenState createState() => _CategoryTabsScreenState();
}

class _CategoryTabsScreenState extends State<NewsCategoryTabsScreen>
    with TickerProviderStateMixin {
  late final TabController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TabController(
      length: 4, //t_Categories.data.length,
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
  void didUpdateWidget(NewsCategoryTabsScreen oldWidget) {
    super.didUpdateWidget(oldWidget);
    _controller.index = widget.index;
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        backgroundColor: AppColorsData.regular().primaryWhite,
        body: Column(
          children: [
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
                    AppTypographyData.greyShades_5().quicksandBodySmall,
                tabs: <Tab>[
                  for (final NewsCategory c in NewsCategories.data)
                    Tab(text: c.name)
                ],
                onTap: (int index) => _tap(context, index),
              ),
            ),
            Flexible(
              child: SizedBox(
                width: double.maxFinite,
                height: 700,
                child: TabBarView(
                  controller: _controller,
                  children: <Widget>[
                    for (final NewsCategory c in NewsCategories.data)
                      NewsCategoryView(
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
      context.go('/newscategory/${NewsCategories.data[index].id}');
}

/// The category view.
class NewsCategoryView extends StatefulWidget {
  /// Creates a [NewsCategoryView].
  const NewsCategoryView({
    required this.category,
    required this.parentContext,
    Key? key,
  }) : super(key: key);

  /// The category to display.
  final NewsCategory category;
  final BuildContext parentContext;

  @override
  State<NewsCategoryView> createState() => _NewsCategoryViewState();
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
class _NewsCategoryViewState extends State<NewsCategoryView>
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
      itemCount: widget.category.listofNews.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.fromLTRB(0, 0, 0, 16.0),
          child: NewsCard(
            news: widget.category.listofNews[index],
            color: AppColorsData.regular().paletteColorsList[index],
            ontap: () => widget.parentContext.go(
                '/newscategory/${widget.category.id}/newsinfo/${widget.category.listofNews[index].id}'),
          ),
        );
      },
    );
  }
}

////////////////////////////////////////////////////////////////////////////////////

