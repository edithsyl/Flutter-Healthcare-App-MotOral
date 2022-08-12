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
        onTap: onTap,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleAvatar(
              backgroundImage: NetworkImage(photoURL),
              radius: 28,
            ),
            const HorizontalGap(num: 12.0),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Flexible(
                    child: Container(
                      width: double.infinity,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            name,
                            style:
                                AppTypographyData.greyShades_6().quicksandBody,
                            maxLines: 2,
                            softWrap: true,
                            overflow: TextOverflow.fade,
                          ),
                          const HorizontalGap(num: 12.0),
                          Text(
                            title,
                            style: AppTypographyData.greyShades_2()
                                .sourceSansProBodySmall,
                            maxLines: 2,
                            softWrap: true,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ],
                      ),
                    ),
                  ),
                  const HorizontalGap(num: 4.0),
                  AppOutlinedRoundButtonReg(
                      title: 'Book', onPressed: buttonOnTap),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
