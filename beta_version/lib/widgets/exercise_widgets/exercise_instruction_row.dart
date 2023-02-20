import 'package:beta_version/widgets/alert_dialogue.dart';
import 'package:custom_ui/custom_ui.dart';

class ExerciseInstructionRow extends StatelessWidget {
  const ExerciseInstructionRow({
    Key? key,
    required this.image,
    required this.video,
    required this.index,
    required this.title,
    required this.description,
  }) : super(key: key);

  final ImageProvider<Object> image;
  final String video;
  final int index;
  final String title;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 0, 0, 24.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          GestureDetector(
            onTap: () => {
              showVideoDialog(
                // context.goNamed('last_recording');
                context,
                title,
                video,
                MediaQuery.of(context).size.width * 0.8,
                'Close',
                () => Navigator.of(context).pop(),
              ),
            },
            child: ClipRRect(
              borderRadius:
                  const AppRadiusData.regular().asBorderRadius().allSmall,
              child: Image(
                width: MediaQuery.of(context).size.width * 0.25,
                image: image,
              ),
            ),
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
