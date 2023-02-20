import 'package:custom_ui/custom_ui.dart';

class DoCaseHistory extends StatelessWidget {
  const DoCaseHistory({
    Key? key,
    required this.ontap,
  }) : super(key: key);

  final VoidCallback ontap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 8.0,
        vertical: 8.0,
      ),
      child: GestureDetector(
        onTap: ontap,
        child: Container(
          width: double.infinity,
          height: MediaQuery.of(context).size.height * 0.12,
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
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                    'Fill your case history for better experience', // "Cheek Strentheing",
                    style: AppTypographyData.greyShades_6().quicksandBody),
                AppSolidRoundButtonReg(
                  title: 'Start',
                  onPressed: ontap,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
