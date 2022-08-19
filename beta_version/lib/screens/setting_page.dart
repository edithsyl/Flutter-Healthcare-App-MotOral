import 'package:beta_version/assets/custom_icons.dart';
import 'package:beta_version/screens/setting/security_page.dart';
import 'package:beta_version/widgets/customtoolpit.dart';
import 'package:beta_version/widgets/login_widgets.dart';
import 'package:beta_version/widgets/setting_widgets.dart';
import 'package:custom_ui/custom_ui.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../widgets/top_app_bar.dart';

/// this is [_SettingPageState]
// TODO: recreate setting page

/// this is [_SettingPageState]

class SettingPage extends StatefulWidget {
  const SettingPage({Key? key}) : super(key: key);

  @override
  State<SettingPage> createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
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
            title: 'Setting',
            leftOnPressed: () {
              context.goNamed('profile');
            },
          ),
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Container(
            child: Padding(
              padding: const EdgeInsets.all(36.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Account Setting',
                    style: AppTypographyData.greyShades_2().sourceSansProBody,
                  ),
                  SettingRepeatRow(name: 'Security', destination: 'security'),
                  SettingRepeatRow(name: 'Language', destination: 'language'),
                  SettingRepeatRow(name: 'Font size', destination: 'fontsize'),
                  SettingRepeatRow(
                      name: 'Push notifications', destination: 'notification'),
                  Text(
                    'We use notifications to inform you of exercises reminders and updates',
                    style: AppTypographyData.greyShades_2().sourceSansProBody,
                  ),
                  Divider(
                    color: AppColorsData.regular().primaryUnavaliableGrey,
                    thickness: .5,
                  ),
                  Text(
                    'More',
                    style: AppTypographyData.greyShades_2().sourceSansProBody,
                  ),
                  SettingRepeatRow(name: 'About us', destination: 'aboutus'),
                  SettingRepeatRow(
                      name: 'Contact us', destination: 'contactus'),
                  SettingRepeatRow(
                      name: 'Private Policy', destination: 'privatepolicy'),
                  SettingRepeatRow(
                      name: 'Terms and conditions',
                      destination: 'termsandconditions'),
                  // SettingRepeatRow(
                  //     name: 'Delete account', destination: 'deleteaccount'),
                  GestureDetector(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'Delete account',
                          style: AppTypographyData.primaryHighlightRed()
                              .sourceSansProBody,
                        ),
                        IconButton(
                          icon: const Icon(
                            CustomIcons.arrowRight,
                          ),
                          color: AppColorsData.regular().primaryHighlightRed,
                          onPressed: () => context.goNamed('deleteaccount'),
                        )
                      ],
                    ),
                    onTap: () {
                      context.goNamed('deleteaccount');
                    },
                  ),
                  const VerticalGap(num: 25),
                  LogoutButton(),
                  const VerticalGap(num: 25),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
