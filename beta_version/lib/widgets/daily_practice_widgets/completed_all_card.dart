import 'package:custom_ui/custom_ui.dart';
import 'package:go_router/go_router.dart';

class CompletedAllCard extends StatelessWidget {
  const CompletedAllCard({
    Key? key,
    //required this.width,
  }) : super(key: key);

  //final double width;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 0,
        vertical: 8.0,
      ),
      child: GestureDetector(
        onTap: () => context.goNamed('exercise'),
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            color: AppColorsData.regular().primaryWhite,
            border: Border.all(
              color: AppColorsData.regular().primaryOrange,
              width: 2,
            ),
            // image: DecorationImage(
            //   image: AssetImage(exercise.image), // 'assets/images/thinking.png'
            //   colorFilter: ColorFilter.mode(
            //     AppColorsData.regular()
            //         .primaryOrange, // AppColorsData.regular().orangeTints_4,
            //     BlendMode.hardLight,
            //   ),
            //   fit: BoxFit.fitHeight,
            //   alignment: Alignment.bottomRight,
            //   repeat: ImageRepeat.noRepeat,
            // ),
            borderRadius:
                const AppRadiusData.regular().asBorderRadius().allRegular,
          ),
          alignment: Alignment.centerLeft,
          padding:
              EdgeInsets.symmetric(horizontal: AppSpacingData.regular().x1),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(16, 24, 16, 9),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Text("Congrats!",
                    style: AppTypographyData.greyShades_6().quicksandBody),
                Text("you have completed all daily practices",
                    style: AppTypographyData.greyShades_6()
                        .sourceSansProBodySmall),
                const VerticalGap(num: 16),
                AppSolidRoundButtonReg(
                  title: 'Go to exercise for more',
                  onPressed: () => context.goNamed('exercise'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
