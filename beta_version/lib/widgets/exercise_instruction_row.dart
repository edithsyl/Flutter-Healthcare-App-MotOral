import 'package:custom_ui/custom_ui.dart';

class ExerciseInstructionRow extends StatelessWidget {
  const ExerciseInstructionRow({
    Key? key,
    required this.image,
    required this.index,
    required this.title,
    required this.description,
  }) : super(key: key);

  final ImageProvider<Object> image;
  final int index;
  final String title;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 0, 0, 24.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image(
            width: 88,
            image: image,
          ),
          const HorizontalGap(num: 24),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "$index)",
                  style: AppTypographyData.greyShades_6().sourceSansProBodyBold,
                ),
                const HorizontalGap(num: 8),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        style: AppTypographyData.greyShades_6()
                            .sourceSansProBodyBold,
                        textAlign: TextAlign.left,
                      ),
                      Text(
                        description,
                        style:
                            AppTypographyData.greyShades_4().sourceSansProBody,
                        textAlign: TextAlign.left,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
