import 'package:beta_version/assets/custom_icons.dart';
import 'package:beta_version/widgets/customtoolpit.dart';
import 'package:beta_version/widgets/setting_widgets.dart';
import 'package:custom_ui/custom_ui.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../widgets/top_app_bar.dart';

/// this is [_EditProfilePageState]
// TODO: recreate setting page

/// this is [_EditProfilePageState]
final String userName = 'AnnaDoe';
final int userId = 208329359;
final String userBio = 'Hi, nice to meet you :)';

class EditProfilePage extends StatefulWidget {
  const EditProfilePage({Key? key}) : super(key: key);

  @override
  State<EditProfilePage> createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {
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
            title: 'Edit Profile',
            leftOnPressed: () {
              context.goNamed('setting');
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
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CircleAvatar(
                    backgroundImage: NetworkImage(
                        "https://pbs.twimg.com/profile_images/1304985167476523008/QNHrwL2q_400x400.jpg"),
                    radius: MediaQuery.of(context).size.width * 0.2,
                  ),
                  const VerticalGap(num: 24),
                  LimitedBox(
                    maxWidth: 50,
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width * 0.5,
                      child: SettingProfileEditButton(
                        icon: Icon(
                          CustomIcons.edit,
                          color: AppColorsData.regular().primaryWhite,
                          size: 16,
                        ),
                        title: 'Change Profile Photo',
                        titlestyle:
                            AppTypographyData.primaryWhite().quicksandBodySmall,
                        borderColor: AppColorsData.regular().primaryOrange,
                        onPressed: () {
                          // choose from gallery or take picture now
                        },
                      ),
                    ),
                  ),
                  const VerticalGap(num: 40),
                  EditProfileRepeatRow(
                      name: 'Username', destination: 'security'),
                  const VerticalGap(num: 16),
                  EditProfileRepeatRow(name: 'Name', destination: 'language'),
                  const VerticalGap(num: 16),
                  EditProfileRepeatRow(name: 'Email', destination: 'fontsize'),
                  const VerticalGap(num: 16),
                  EditProfileRepeatRow(name: 'Phone', destination: 'editphone'),
                  const VerticalGap(num: 16),
                  EditProfileRepeatRow(
                      name: 'Date of Birth', destination: 'contactus'),
                  const VerticalGap(num: 16),
                  EditProfileRepeatRow(
                      name: 'Bio', destination: 'privatepolicy'),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
