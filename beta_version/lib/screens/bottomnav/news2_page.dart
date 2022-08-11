import 'package:beta_version/assets/custom_icons.dart';
import 'package:beta_version/data/news_categories_data.dart';
import 'package:beta_version/models/news_category_model.dart';
import 'package:beta_version/models/news_model.dart';
import 'package:beta_version/screens/news/news_app.dart';
import 'package:beta_version/screens/news/news_category_tab_list.dart';
import 'package:beta_version/screens/news/news_info_page.dart';

import 'package:beta_version/widgets/top_app_bar.dart';
import 'package:custom_ui/custom_ui.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class News2Page extends StatelessWidget {
  News2Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<GoRoute> _exRoutes = [
      GoRoute(
        path: '/newscategory/:nid',
        pageBuilder: (BuildContext context, GoRouterState state) => FadePage(
            key: state.pageKey,
            child: NewsCategoryTabsScreen(
              parentContext: context,
              key: state.pageKey,
              selectedCategory: NewsCategories.category(state.params['nid']!),
            ),
            time: AppDurationsData.regular().quick),
        routes: <GoRoute>[
          GoRoute(
            path: 'newsinfo/:eid',
            pageBuilder: (BuildContext context, GoRouterState state) {
              final NewsCategory category =
                  NewsCategories.category(state.params['nid']!);
              final News news = category.news(state.params['eid']!);
              return FadePage(
                key: state.pageKey,
                child: ThisNewsScreen(
                  category: category,
                  news: news,
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
      initialLocation: '/news/${NewsCategories.data[0].id}',
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
            Padding(
              padding: const EdgeInsets.fromLTRB(24, 56, 24, 24),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'News',
                    style: AppTypographyData.primaryWhite().quicksandTitle2,
                  ),
                  IconButton(
                    icon: const Icon(
                      CustomIcons.bookmark,
                    ),
                    color: AppColorsData.regular().primaryWhite,
                    onPressed: () => context.goNamed('bookmark'),
                  )
                ],
              ),
            ),
            //////////////
            Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height,
              padding: const EdgeInsets.fromLTRB(32, 40, 32, 32),
              decoration: BoxDecoration(
                color: AppColorsData.regular().primaryWhite,
                borderRadius: const AppRadiusData.regular()
                    .asBorderRadius()
                    .verticalRegular,
              ),
              child: SingleChildScrollView(
                physics:
                    const NeverScrollableScrollPhysics(), //const ScrollPhysics(),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    ConstrainedBox(
                      constraints: BoxConstraints.loose(
                        const Size(432.0, 800.0),
                      ),
                      child: WillPopScope(
                        child: NewsApp(
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
