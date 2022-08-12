//MYTODO

import 'package:beta_version/assets/custom_icons.dart';
import 'package:beta_version/widgets/profile_toggle_button.dart';
import 'package:custom_ui/custom_ui.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

// TODO: add firebase avatar
class OtherUserProfilePage extends StatelessWidget {
  const OtherUserProfilePage({Key? key}) : super(key: key);

  final String userName = 'AnnaDoe';
  final int userId = 208329359;
  final String userBio = 'Hi, nice to meet you :)';

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const ScrollPhysics(),
      child: CustomPaint(
        isComplex: false,
        willChange: false,
        size: MediaQuery.of(context).size,
        painter: ProfileBackgroundPainter(),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(24, 56, 24, 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Profile',
                    style: AppTypographyData.primaryWhite().quicksandTitle2,
                  ),
                  IconOutlinedRoundButtonReg(
                    icon: Icon(
                      CustomIcons.setting,
                      color: AppColorsData.regular().primaryHighlightBlue,
                      size: 16,
                    ),
                    title: 'Setting',
                    titlestyle:
                        AppTypographyData.primaryHighlightBlue().quicksandBody,
                    borderColor:
                        AppColorsData.regular().primaryWhite.withOpacity(0),
                    onPressed: () {
                      context.goNamed('setting');
                    },
                  ),
                ],
              ),
              const VerticalGap(num: 24),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      backgroundImage:
                          NetworkImage("https://i.pravatar.cc/300"),
                      radius: 56,
                    ),
                    const HorizontalGap(num: 24),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          userName,
                          style: AppTypographyData.primaryWhite()
                              .sourceSansProBodyBold,
                        ),
                        Text(
                          'ID: $userId',
                          style: AppTypographyData.primaryWhite()
                              .sourceSansProBodySmall,
                        ),
                        const VerticalGap(num: 12),
                        Text(
                          'Bio: $userBio',
                          style: AppTypographyData.primaryWhite()
                              .sourceSansProBodySmall,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const VerticalGap(num: 24),
              Container(
                // case history
                padding:
                    const EdgeInsets.symmetric(vertical: 4.0, horizontal: 24.0),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: AppColorsData.regular().orangeTints_4,
                    width: 2,
                  ),
                  color: AppColorsData.regular().primaryWhite,
                  borderRadius:
                      const AppRadiusData.regular().asBorderRadius().allRegular,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Case History',
                      style: AppTypographyData.primaryOrange().quicksandBody,
                    ),
                    AppSolidRoundButtonReg(
                      title: 'Go',
                      onPressed: () => context.goNamed('casehistory'),
                    )
                  ],
                ),
              ),
              const VerticalGap(num: 24),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width / 4,
                    // streak
                    padding: const EdgeInsets.symmetric(
                        vertical: 4.0, horizontal: 12),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: AppColorsData.regular().greyTints_3,
                        width: 1,
                      ),
                      color: AppColorsData.regular().primaryWhite,
                      borderRadius: const AppRadiusData.regular()
                          .asBorderRadius()
                          .allRegular,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'Streak',
                          style: AppTypographyData.greyShades_5().quicksandBody,
                        ),
                        Text(
                          '0',
                          style:
                              AppTypographyData.primaryOrange().quicksandTitle2,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width / 4,
                    padding: const EdgeInsets.symmetric(
                        vertical: 4.0, horizontal: 12),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: AppColorsData.regular().greyTints_3,
                        width: 1,
                      ),
                      color: AppColorsData.regular().primaryWhite,
                      borderRadius: const AppRadiusData.regular()
                          .asBorderRadius()
                          .allRegular,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'xp',
                          style: AppTypographyData.greyShades_5().quicksandBody,
                        ),
                        Text(
                          '0',
                          style:
                              AppTypographyData.primaryOrange().quicksandTitle2,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width / 4,
                    padding: const EdgeInsets.symmetric(
                        vertical: 4.0, horizontal: 12),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: AppColorsData.regular().greyTints_3,
                        width: 1,
                      ),
                      color: AppColorsData.regular().primaryWhite,
                      borderRadius: const AppRadiusData.regular()
                          .asBorderRadius()
                          .allRegular,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'Frd',
                          style: AppTypographyData.greyShades_5().quicksandBody,
                        ),
                        Text(
                          '0',
                          style:
                              AppTypographyData.primaryOrange().quicksandTitle2,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const VerticalGap(num: 24),
              ProfileToggleButton(),
            ],
          ),
        ),
      ),
    );
  }
}
