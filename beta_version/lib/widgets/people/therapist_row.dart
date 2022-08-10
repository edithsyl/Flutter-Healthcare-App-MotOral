import 'package:custom_ui/custom_ui.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class TherapistRow extends StatelessWidget {
  TherapistRow({
    super.key,
    required this.name,
    required this.title,
    required this.photoURL,
    required this.onTap,
    required this.buttonOnTap,
  });

  final String name;
  final String title;
  final String photoURL;
  VoidCallback onTap;
  VoidCallback buttonOnTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 0, 0, 24),
      child: GestureDetector(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CircleAvatar(
                backgroundImage: NetworkImage(photoURL),
                radius: 32,
              ),
              const HorizontalGap(num: 16),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          name,
                          style: AppTypographyData.greyShades_6()
                              .sourceSansProBodyBold,
                        ),
                        Text(
                          title,
                          style: AppTypographyData.greyShades_2()
                              .sourceSansProBody,
                        ),
                      ],
                    ),
                    Expanded(child: Container()),
                    AppOutlinedRoundButtonReg(
                        title: 'Book', onPressed: buttonOnTap),
                  ],
                ),
              ),
            ],
          ),
          onTap: onTap),
    );
  }
}
