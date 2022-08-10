import 'package:custom_ui/custom_ui.dart';
import 'package:flutter/material.dart';

class LeaderboardRow extends StatelessWidget {
  LeaderboardRow({
    super.key,
    required this.index,
    required this.name,
    required this.xp,
    required this.isOnline,
    required this.photoURL,
    required this.onTap,
  });

  final int index;
  final String name;
  final int xp;
  final bool isOnline;
  final String photoURL;
  VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 0, 0, 24),
      child: GestureDetector(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              '$index.',
              style: AppTypographyData.greyShades_4().sourceSansProBody,
            ),
            const HorizontalGap(num: 16),
            CircleAvatar(
              backgroundImage: NetworkImage(photoURL),
              radius: 32,
            ),
            const HorizontalGap(num: 16),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        name,
                        style: AppTypographyData.greyShades_6()
                            .sourceSansProBodyBold,
                      ),
                      Text(
                        '${xp}xp',
                        style: AppTypographyData.primaryOrange()
                            .sourceSansProBodyBold,
                      ),
                    ],
                  ),
                  isOnline
                      ? Text(
                          'online',
                          style: AppTypographyData.primaryHighlightBlue()
                              .sourceSansProBody,
                        )
                      : Text(
                          'offline',
                          style: AppTypographyData.greyShades_6()
                              .sourceSansProBody,
                        ),
                ],
              ),
            ),
          ],
        ),
        onTap: onTap,
      ),
    );
  }
}
