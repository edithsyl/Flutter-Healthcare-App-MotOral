import 'package:beta_version/app_router.dart';
import 'package:custom_ui/custom_ui.dart';
import 'package:simple_animations/timeline_tween/prop.dart';

class ExercisePage extends StatelessWidget {
  const ExercisePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // MYTODO: make exercise cards
    return Container(
      padding: EdgeInsets.symmetric(horizontal: AppSpacingData.regular().x4),
      child: ListView(
        children: <Widget>[
          Container(
            width: double.infinity,
            height: 120,
            decoration: BoxDecoration(
              color: AppColorsData.regular().orangeTints_4,
              // image: DecorationImage(
              //   image: ,
              //   fit: BoxFit.fitHeight,
              //   alignment: Alignment.bottomRight,
              //   repeat: ImageRepeat.noRepeat,),
              borderRadius:
                  const AppRadiusData.regular().asBorderRadius().allRegular,
            ),
            alignment: Alignment.centerLeft,
            padding:
                EdgeInsets.symmetric(horizontal: AppSpacingData.regular().x1),
            child: Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 24.0,
                horizontal: 16.0,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Text("Cheek Strentheing",
                      style: AppTypographyData.primaryWhite()
                          .sourceSansProBodyBold),
                  Row(
                    children: <Widget>[
                      Text("4",
                          style: AppTypographyData.greyShades_6()
                              .sourceSansProBodySmall),
                      Text(" mins * ",
                          style: AppTypographyData.greyShades_6()
                              .sourceSansProBodySmall),
                      Text("Cheek",
                          style: AppTypographyData.greyShades_6()
                              .sourceSansProBodySmall),
                    ],
                  ),
                  Text("strengthe the muscles of the cheek",
                      style: AppTypographyData.greyShades_6()
                          .sourceSansProBodySmall),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
