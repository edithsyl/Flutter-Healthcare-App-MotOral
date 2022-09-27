import 'package:beta_version/models/badge_model.dart';
import 'package:custom_ui/custom_ui.dart';

class BadgeRow extends StatelessWidget {
  const BadgeRow({
    Key? key,
    required this.thisBadge,
  }) : super(key: key);

  final Badge thisBadge;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 0, 0, 24),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image(
            width: 96,
            image: AssetImage(thisBadge.image),
            color: thisBadge.isCollected
                ? const Color.fromARGB(0, 0, 0, 0)
                : const Color.fromARGB(255, 0, 0, 0),
            colorBlendMode: BlendMode.saturation,
          ),
          const HorizontalGap(num: 24),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  thisBadge.name,
                  style: AppTypographyData.greyShades_6().sourceSansProBodyBold,
                  textAlign: TextAlign.left,
                ),
                Text(
                  thisBadge.description,
                  style: AppTypographyData.greyShades_4().sourceSansProBody,
                  textAlign: TextAlign.left,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
