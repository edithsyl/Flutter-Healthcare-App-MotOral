import 'package:beta_version/assets/custom_icons.dart';
import 'package:custom_ui/custom_ui.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class NewsPage extends StatelessWidget {
  const NewsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColorsData.regular().primaryOrange,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.fromLTRB(24, 56, 24, 24),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'News Feed',
                  style: AppTypographyData.primaryWhite().quicksandTitle2,
                ),
                IconButton(
                  icon: const Icon(
                    CustomIcons.edit,
                  ),
                  color: AppColorsData.regular().primaryWhite,
                  onPressed: () => context.goNamed('notification'),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
