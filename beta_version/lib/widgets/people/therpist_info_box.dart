import 'package:beta_version/assets/custom_icons.dart';
import 'package:custom_ui/custom_ui.dart';

class TherapistInfoBox extends StatelessWidget {
  TherapistInfoBox({
    super.key,
    required this.thisIcon,
    required this.infoName,
    required this.onTap,
  });

  final Icon thisIcon;
  final String infoName;
  VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        width: MediaQuery.of(context).size.width / 5,
        // streak
        padding: const EdgeInsets.symmetric(vertical: 4.0, horizontal: 12),
        decoration: BoxDecoration(
          border: Border.all(
            color: AppColorsData.regular().greyTints_3,
            width: 1,
          ),
          color: AppColorsData.regular().primaryWhite,
          borderRadius:
              const AppRadiusData.regular().asBorderRadius().allRegular,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            thisIcon,
            Text(
              infoName,
              style: AppTypographyData.greyShades_2().sourceSansProBody,
            ),
          ],
        ),
      ),
      onTap: onTap,
    );
  }
}

class LongTherapistInfoBox extends StatelessWidget {
  LongTherapistInfoBox({
    super.key,
    required this.thisIcon,
    required this.infoName,
    required this.onTap,
  });

  final Icon thisIcon;
  final String infoName;
  VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Center(
        //FIXME: container take the remaining width of the row
        child: Container(
          //width: MediaQuery.of(context).size.width / 2,
          // streak
          padding: const EdgeInsets.symmetric(vertical: 4.0, horizontal: 12),
          decoration: BoxDecoration(
            border: Border.all(
              color: AppColorsData.regular().greyTints_3,
              width: 1,
            ),
            color: AppColorsData.regular().primaryWhite,
            borderRadius:
                const AppRadiusData.regular().asBorderRadius().allRegular,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              thisIcon,
              Text(
                infoName,
                style: AppTypographyData.greyShades_2().sourceSansProBody,
              ),
            ],
          ),
        ),
      ),
      onTap: onTap,
    );
  }
}
