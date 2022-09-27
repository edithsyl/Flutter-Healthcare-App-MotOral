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
        onTap: onTap,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              '$index.',
              style: AppTypographyData.greyShades_4().sourceSansProBodySmall,
            ),
            const HorizontalGap(num: 12),
            CircleAvatar(
              backgroundImage: NetworkImage(photoURL),
              radius: 28,
            ),
            const HorizontalGap(num: 12.0),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Flexible(
                        child: Container(
                          width: double.infinity,
                          child: Text(
                            name,
                            style:
                                AppTypographyData.greyShades_6().quicksandBody,
                            maxLines: 2,
                            softWrap: true,
                            overflow: TextOverflow.fade,
                          ),
                        ),
                      ),
                      const HorizontalGap(num: 12.0),
                      Text(
                        '${xp}xp',
                        style: AppTypographyData.primaryOrange()
                            .sourceSansProBodySemibold,
                      ),
                    ],
                  ),
                  const VerticalGap(num: 2.0),
                  isOnline
                      ? Text(
                          'online',
                          style: AppTypographyData.primaryHighlightBlue()
                              .sourceSansProBodySmall,
                        )
                      : Text(
                          'offline',
                          style: AppTypographyData.greyShades_6()
                              .sourceSansProBodySmall,
                        ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
