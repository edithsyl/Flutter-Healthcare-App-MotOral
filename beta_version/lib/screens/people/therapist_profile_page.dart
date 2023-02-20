import 'package:beta_version/assets/custom_icons.dart';
import 'package:beta_version/widgets/people/therpist_info_box.dart';
import 'package:beta_version/widgets/top_app_bar.dart';
import 'package:custom_ui/custom_ui.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

// TODO: add firebase avatar
class TherapistProfilePage extends StatelessWidget {
  TherapistProfilePage({Key? key}) : super(key: key);

  final String userName = 'Arran Phelps';
  final int userId = 208329359;
  final String userBio = 'Hi, I am a therapist :)';
  final List<String> qualification = [
    'M.Sc.(Sp&HearSc) University of Toronto',
    'B.Sc.(Sp&HearSc) The University of Hong Kong',
  ];
  final String areaOfInterest =
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus efficitur urna sed sem porta, a varius mi accumsan. In scelerisque molestie ligula, in sagittis eros efficitur non. Duis consequat lectus ultricies, sodales tellus quis, pharetra velit. ';

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(80),
          child: Container(
            width: double.infinity,
            padding: const EdgeInsets.fromLTRB(24, 30, 24, 0),
            decoration: BoxDecoration(
              color: AppColorsData.regular().primaryOrange,
            ),
            child: AppBarContent(
              title: 'Exercise',
              leftOnPressed: () {
                //go back to exercise page
                context.goNamed('people');
              },
            ),
          ),
        ),
        body: SingleChildScrollView(
          physics: const ScrollPhysics(),
          child: CustomPaint(
            isComplex: false,
            willChange: false,
            size: MediaQuery.of(context).size,
            painter: TherapistProfileBackgroundPainter(),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(24, 56, 24, 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  const VerticalGap(num: 24),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        CircleAvatar(
                          backgroundImage:
                              NetworkImage("https://i.pravatar.cc/500"),
                          radius: 40,
                        ),
                        const HorizontalGap(num: 24),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              userName,
                              style: AppTypographyData.primaryWhite()
                                  .sourceSansProBodyBold,
                            ),
                            Text(
                              'ID: $userId',
                              style: AppTypographyData.primaryWhite()
                                  .sourceSansProBodySmall,
                            ),
                            const VerticalGap(num: 16),
                            Container(
                              // case history
                              padding: const EdgeInsets.symmetric(
                                  vertical: 4.0, horizontal: 24.0),
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: AppColorsData.regular().orangeTints_4,
                                  width: 2,
                                ),
                                color: AppColorsData.regular().primaryWhite,
                                borderRadius: const AppRadiusData.regular()
                                    .asBorderRadius()
                                    .allRegular,
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Icon(
                                    CustomIcons.plus,
                                    color:
                                        AppColorsData.regular().primaryOrange,
                                    size: 16,
                                  ),
                                  Text(
                                    'Add to list',
                                    style: AppTypographyData.primaryOrange()
                                        .quicksandBody,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const VerticalGap(num: 24),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      TherapistInfoBox(
                        thisIcon: Icon(
                          CustomIcons.mail,
                          color: AppColorsData.regular().greyShades_6,
                          size: 16,
                        ),
                        infoName: 'email',
                        onTap: () {},
                      ),
                      const HorizontalGap(num: 4),
                      TherapistInfoBox(
                        thisIcon: Icon(
                          CustomIcons.phone,
                          color: AppColorsData.regular().greyShades_6,
                          size: 16,
                        ),
                        infoName: 'phone',
                        onTap: () {},
                      ),
                      const HorizontalGap(num: 4),
                      LongTherapistInfoBox(
                        thisIcon: Icon(
                          CustomIcons.message,
                          color: AppColorsData.regular().greyShades_6,
                          size: 16,
                        ),
                        infoName: 'works at',
                        onTap: () {},
                      ),
                    ],
                  ),
                  const VerticalGap(num: 24),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Qualification',
                          style:
                              AppTypographyData.primaryOrange().quicksandBody,
                        ),
                        // for (i in qualification){

                        // }
                        // Text(qualification[i])
                        const VerticalGap(num: 24),
                        Text(
                          'Area of Interest',
                          style:
                              AppTypographyData.primaryOrange().quicksandBody,
                        ),
                        Text(
                          areaOfInterest,
                          softWrap: true,
                          style: AppTypographyData.greyShades_5()
                              .sourceSansProBody,
                        ),
                        const VerticalGap(num: 320),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      );
}
