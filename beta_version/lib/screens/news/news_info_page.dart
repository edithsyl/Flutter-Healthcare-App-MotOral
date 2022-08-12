import 'package:beta_version/assets/custom_icons.dart';
import 'package:beta_version/models/news_category_model.dart';
import 'package:beta_version/models/news_model.dart';
import 'package:beta_version/widgets/top_app_bar.dart';
import 'package:custom_ui/custom_ui.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ThisNewsScreen extends StatefulWidget {
  const ThisNewsScreen({required this.category, required this.news, Key? key})
      : super(key: key);

  @override
  State<ThisNewsScreen> createState() => _ThisExerciseScreenState();

  /// The category this news belong to.
  final NewsCategory category;

  /// The news to be displayed.
  final News news;
}

class _ThisExerciseScreenState extends State<ThisNewsScreen> {
  @override
  Widget build(BuildContext context) => Scaffold(
        backgroundColor: AppColorsData.regular().primaryOrange,
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                height: 320,
                decoration: BoxDecoration(
                    color: AppColorsData.regular().primaryOrange,
                    image: DecorationImage(
                      image: AssetImage(widget.news.image),
                    )),
                padding: const EdgeInsets.all(32.0),
                child: Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          IconButton(
                            onPressed: () {
                              //go back to news page
                              context.goNamed('news');
                            },
                            icon: const Icon(CustomIcons.back),
                            color: AppColorsData.regular().primaryWhite,
                          ),
                          Text(
                            widget.news.date,
                            style: AppTypographyData.orangeTints_6()
                                .quicksandBodySmall,
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(CustomIcons.back),
                            color: Colors.transparent,
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            widget.news.title,
                            style: AppTypographyData.primaryWhite()
                                .quicksandTitle2,
                            textAlign: TextAlign.center,
                            softWrap: true,
                          ),
                          const VerticalGap(num: 12),
                          Text(
                            'by ${widget.news.author}',
                            style: AppTypographyData.orangeTints_8()
                                .sourceSansProBody,
                          ),
                        ],
                      ),
                      const VerticalGap(num: 2),
                    ],
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                padding: const EdgeInsets.fromLTRB(32, 40, 32, 32),
                // decoration: BoxDecoration(
                color: AppColorsData.regular().primaryWhite,
                //   borderRadius: const AppRadiusData.regular()
                //       .asBorderRadius()
                //       .verticalRegular,
                // ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      widget.news.content,
                      style: AppTypographyData.greyShades_6().sourceSansProBody,
                    ),
                    Container(
                      height: 800,
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      );
}
