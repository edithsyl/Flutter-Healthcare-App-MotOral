import 'package:beta_version/assets/custom_icons.dart';
import 'package:beta_version/widgets/login_widgets.dart';
import 'package:beta_version/widgets/top_app_bar.dart';
import 'package:custom_ui/custom_ui.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

// TODO: recreate setting page

class LanguagePage extends StatefulWidget {
  const LanguagePage({Key? key}) : super(key: key);

  @override
  State<LanguagePage> createState() => _LanguagePageState();
}

class _LanguagePageState extends State<LanguagePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // TODO:  test app bar here
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(80),
          child: Container(
            width: double.infinity,
            padding: const EdgeInsets.fromLTRB(24, 30, 24, 0),
            decoration: BoxDecoration(
              color: AppColorsData.regular().primaryOrange,
            ),
            child: AppBarContent(
              title: 'Language',
              leftOnPressed: () {
                context.goNamed('home');
              },
            ),
          ),
        ),
        body: Center(
            child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            AppOutlineButton(
              title: 'English',
              tStyle: AppTypographyData.primaryOrange().sourceSansProBody,
              rad: const AppRadiusData.regular().asBorderRadius().allRegular,
              size: const Size(140, 53),
              onPressed: () {
                // context.goNamed('English');
              },
            ),
            const HorizontalGap(num: 48),
            AppOutlineButton(
              title: '中文',
              tStyle: AppTypographyData.primaryOrange().sourceSansProBody,
              rad: const AppRadiusData.regular().asBorderRadius().allRegular,
              size: const Size(140, 53),
              onPressed: () {
                // context.goNamed('中文');
              },
            ),
          ],
        )));
  }
}
