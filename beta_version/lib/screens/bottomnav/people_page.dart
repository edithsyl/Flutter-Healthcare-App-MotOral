import 'package:custom_ui/custom_ui.dart';
import 'package:flutter/material.dart';

class PeoplePage extends StatelessWidget {
  const PeoplePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColorsData.regular().primaryOrange,
      height: MediaQuery.of(context).size.height,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.fromLTRB(24, 56, 24, 24),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'People',
                  style: AppTypographyData.primaryWhite().quicksandTitle2,
                ),
              ],
            ),
          ),
          const VerticalGap(num: 25),
          Expanded(
            child: Container(
              width: double.infinity,
              padding: const EdgeInsets.fromLTRB(32, 40, 32, 32),
              decoration: BoxDecoration(
                color: AppColorsData.regular().primaryWhite,
                borderRadius: const AppRadiusData.regular()
                    .asBorderRadius()
                    .verticalRegular,
              ),
              child: ListView.builder(
                padding: const EdgeInsets.symmetric(horizontal: 12.0),
                shrinkWrap: true,
                physics: const BouncingScrollPhysics(
                    parent: AlwaysScrollableScrollPhysics()),
                scrollDirection: Axis.vertical,
                itemCount: 6, // FIXME: too many item will cause bottom overflow
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.fromLTRB(0, 0, 0, 24),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          '${index + 1}.',
                          style: AppTypographyData.greyShades_4()
                              .sourceSansProBody,
                        ),
                        const HorizontalGap(num: 16),
                        const CircleAvatar(
                          backgroundImage: NetworkImage(
                              "https://pbs.twimg.com/profile_images/1304985167476523008/QNHrwL2q_400x400.jpg"),
                          radius: 32,
                        ),
                        const HorizontalGap(num: 16),
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Name',
                                    style: AppTypographyData.greyShades_6()
                                        .sourceSansProBodyBold,
                                  ),
                                  Text(
                                    '100xp',
                                    style: AppTypographyData.primaryOrange()
                                        .sourceSansProBodyBold,
                                  ),
                                ],
                              ),
                              Text(
                                'online',
                                style: AppTypographyData.greyShades_6()
                                    .sourceSansProBody,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
