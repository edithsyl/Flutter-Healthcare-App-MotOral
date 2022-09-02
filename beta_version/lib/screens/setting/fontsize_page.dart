import 'package:beta_version/widgets/login_widgets.dart';
import 'package:beta_version/widgets/top_app_bar.dart';
import 'package:custom_ui/custom_ui.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

// TODO: recreate setting page

class FontSizePage extends StatefulWidget {
  const FontSizePage({Key? key}) : super(key: key);

  @override
  State<FontSizePage> createState() => _FontSizePageState();
}

class _FontSizePageState extends State<FontSizePage> {
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
              title: 'FontSize',
              leftOnPressed: () {
                context.goNamed('home');
              },
            ),
          ),
        ),
        body: Center(
            child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            AppOutlineButton(
              title: 'default',
              tStyle: AppTypographyData.primaryOrange().sourceSansProBody,
              rad: const AppRadiusData.regular().asBorderRadius().allRegular,
              size: Size(MediaQuery.of(context).size.width * 0.3, 53),
              onPressed: () {
                // context.goNamed('default');
              },
            ),
            AppOutlineButton(
              title: 'large',
              tStyle: AppTypographyData.primaryOrange().sourceSansProBody,
              rad: const AppRadiusData.regular().asBorderRadius().allRegular,
              size: Size(MediaQuery.of(context).size.width * 0.3, 53),
              onPressed: () {
                // context.goNamed('large');
              },
            ),
            AppOutlineButton(
              title: 'huge',
              tStyle: AppTypographyData.primaryOrange().sourceSansProBody,
              rad: const AppRadiusData.regular().asBorderRadius().allRegular,
              size: Size(MediaQuery.of(context).size.width * 0.3, 53),
              onPressed: () {
                // context.goNamed('huge');
              },
            ),
          ],
        )));
  }
}
