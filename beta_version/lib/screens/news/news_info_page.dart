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
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(80),
          child: Container(
            width: double.infinity,
            padding: const EdgeInsets.fromLTRB(24, 30, 24, 0),
            decoration: BoxDecoration(
              color: AppColorsData.regular().primaryOrange,
            ),
            child: AppBarContent(
              title: 'News',
              leftOnPressed: () {
                //go back to news page
                context.goNamed('news');
              },
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                  image: AssetImage(widget.news.image),
                )),
                padding: const EdgeInsets.symmetric(
                    vertical: 16.0, horizontal: 40.0),
                child: Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        widget.news.date,
                        style: AppTypographyData.primaryOrange().quicksandBody,
                      ),
                      Text(
                        widget.news.title,
                        style:
                            AppTypographyData.primaryOrange().quicksandTitle2,
                        textAlign: TextAlign.left,
                      ),
                      const VerticalGap(num: 12),
                      Text(
                        'by ${widget.news.author}',
                        style:
                            AppTypographyData.greyShades_5().sourceSansProBody,
                      ),
                      const VerticalGap(num: 24),
                      Text(
                        widget.news.content,
                        style:
                            AppTypographyData.greyShades_6().sourceSansProBody,
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
