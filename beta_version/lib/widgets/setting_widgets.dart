import 'package:beta_version/assets/custom_icons.dart';
import 'package:custom_ui/custom_ui.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SettingRepeatRow extends StatelessWidget {
  final String name;
  final String destination;

  const SettingRepeatRow({
    Key? key,
    required this.name,
    required this.destination,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            name,
            style:
                AppTypographyData.orangeShadesAlmostBlack().sourceSansProBody,
          ),
          IconButton(
            icon: const Icon(
              CustomIcons.arrowRight,
            ),
            color: AppColorsData.regular().orangeShadesAlmostBlack,
            onPressed: () => context.goNamed(destination),
          )
        ],
      ),
      onTap: () {
        context.goNamed(destination);
      },
    );
  }
}

class EditProfileRepeatRow extends StatelessWidget {
  final String name;
  final String destination;

  const EditProfileRepeatRow({
    Key? key,
    required this.name,
    required this.destination,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            name,
            style: AppTypographyData.greyShades_2().sourceSansProBodySmall,
          ),
          const VerticalGap(num: 8),
          Text(
            name,
            style:
                AppTypographyData.orangeShadesAlmostBlack().sourceSansProBody,
          ),
          // const VerticalGap(num: 4),
          Divider(
            color: AppColorsData.regular().primaryUnavaliableGrey,
            thickness: .5,
          ),
        ],
      ),
      onTap: () {
        context.goNamed(destination);
      },
    );
  }
}

class ChangeProfilePicButton extends StatelessWidget {
  const ChangeProfilePicButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LimitedBox(
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
          titlestyle: AppTypographyData.primaryWhite().quicksandBodySmall,
          borderColor: AppColorsData.regular().primaryOrange,
          onPressed: () {
            // choose from gallery or take picture now
          },
        ),
      ),
    );
  }
}
