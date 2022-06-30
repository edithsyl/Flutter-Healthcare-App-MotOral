import 'package:custom_ui/source/theme/data/colors.dart';
import 'package:custom_ui/source/utils/named.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import '../../../custom_ui.dart';

class AppTypographyData extends Equatable {
  const AppTypographyData({
    required this.quicksandResultScore,
    required this.quicksandTitle,
    required this.quicksandTitle1,
    required this.quicksandTitle2,
    required this.quicksandBody,
    required this.quicksandBodySmall,
    required this.quicksandSmallButton,
    required this.quicksandBodyTiny,
    required this.sourceSansProBodyBold,
    required this.sourceSansProBodySemibold,
    required this.sourceSansProBody,
    required this.sourceSansProBodySmall,
    required this.sourceSansProBody1,
    required this.lavina,
  });

  factory AppTypographyData.primaryOrange() => AppTypographyData(
        quicksandResultScore: TextStyle(
          fontWeight: FontWeight.w600,
          fontFamily: "Quicksand",
          fontStyle: FontStyle.normal,
          fontSize: 48,
          color: AppColorsData.regular().primaryOrange,
        ),
        quicksandTitle: TextStyle(
          fontWeight: FontWeight.w400,
          fontFamily: "Quicksand",
          fontStyle: FontStyle.normal,
          fontSize: 48,
          color: AppColorsData.regular().primaryOrange,
        ),
        quicksandTitle1: TextStyle(
          fontWeight: FontWeight.w700,
          fontFamily: "Quicksand",
          fontStyle: FontStyle.normal,
          fontSize: 28,
          color: AppColorsData.regular().primaryOrange,
        ),
        quicksandTitle2: TextStyle(
          fontWeight: FontWeight.w700,
          fontFamily: "Quicksand",
          fontStyle: FontStyle.normal,
          fontSize: 24,
          color: AppColorsData.regular().primaryOrange,
        ),
        quicksandBody: TextStyle(
          fontWeight: FontWeight.w700,
          fontFamily: "Quicksand",
          fontStyle: FontStyle.normal,
          fontSize: 17,
          color: AppColorsData.regular().primaryOrange,
        ),
        quicksandBodySmall: TextStyle(
          fontWeight: FontWeight.w700,
          fontFamily: "Quicksand",
          fontStyle: FontStyle.normal,
          fontSize: 15,
          color: AppColorsData.regular().primaryOrange,
        ),
        quicksandSmallButton: TextStyle(
          fontWeight: FontWeight.w700,
          fontFamily: "Quicksand",
          fontStyle: FontStyle.normal,
          fontSize: 13,
          color: AppColorsData.regular().primaryOrange,
        ),
        quicksandBodyTiny: TextStyle(
          fontFamily: 'Poppins',
          package: 'asgard_core',
          fontWeight: FontWeight.w400,
          fontSize: 9,
          color: AppColorsData.regular().primaryOrange,
        ),
        sourceSansProBodyBold: TextStyle(
          fontWeight: FontWeight.w700,
          fontFamily: "SourceSansPro",
          fontStyle: FontStyle.normal,
          fontSize: 20,
          color: AppColorsData.regular().primaryOrange,
        ),
        sourceSansProBodySemibold: TextStyle(
          fontWeight: FontWeight.w600,
          fontFamily: "SourceSansPro",
          fontStyle: FontStyle.normal,
          fontSize: 17,
          color: AppColorsData.regular().primaryOrange,
        ),
        sourceSansProBody: TextStyle(
          fontWeight: FontWeight.w400,
          fontFamily: "SourceSansPro",
          fontStyle: FontStyle.normal,
          fontSize: 17,
          color: AppColorsData.regular().primaryOrange,
        ),
        sourceSansProBodySmall: TextStyle(
          fontWeight: FontWeight.w400,
          fontFamily: "SourceSansPro",
          fontStyle: FontStyle.normal,
          fontSize: 15,
          color: AppColorsData.regular().primaryOrange,
        ),
        sourceSansProBody1: TextStyle(
          fontWeight: FontWeight.w400,
          fontFamily: "SourceSansPro",
          fontStyle: FontStyle.normal,
          fontSize: 11,
          color: AppColorsData.regular().primaryOrange,
        ),
        lavina: TextStyle(
          fontWeight: FontWeight.w400,
          fontFamily: "Lancelot",
          fontStyle: FontStyle.normal,
          fontSize: 12,
          color: AppColorsData.regular().primaryOrange,
        ),
      );

  factory AppTypographyData.greyShades_2() => AppTypographyData(
        quicksandResultScore: TextStyle(
          fontWeight: FontWeight.w600,
          fontFamily: "Quicksand",
          fontStyle: FontStyle.normal,
          fontSize: 48,
          color: AppColorsData.regular().greyShades_2,
        ),
        quicksandTitle: TextStyle(
          fontWeight: FontWeight.w400,
          fontFamily: "Quicksand",
          fontStyle: FontStyle.normal,
          fontSize: 48,
          color: AppColorsData.regular().greyShades_2,
        ),
        quicksandTitle1: TextStyle(
          fontWeight: FontWeight.w700,
          fontFamily: "Quicksand",
          fontStyle: FontStyle.normal,
          fontSize: 28,
          color: AppColorsData.regular().greyShades_2,
        ),
        quicksandTitle2: TextStyle(
          fontWeight: FontWeight.w700,
          fontFamily: "Quicksand",
          fontStyle: FontStyle.normal,
          fontSize: 24,
          color: AppColorsData.regular().greyShades_2,
        ),
        quicksandBody: TextStyle(
          fontWeight: FontWeight.w700,
          fontFamily: "Quicksand",
          fontStyle: FontStyle.normal,
          fontSize: 17,
          color: AppColorsData.regular().greyShades_2,
        ),
        quicksandBodySmall: TextStyle(
          fontWeight: FontWeight.w700,
          fontFamily: "Quicksand",
          fontStyle: FontStyle.normal,
          fontSize: 15,
          color: AppColorsData.regular().greyShades_2,
        ),
        quicksandSmallButton: TextStyle(
          fontWeight: FontWeight.w700,
          fontFamily: "Quicksand",
          fontStyle: FontStyle.normal,
          fontSize: 13,
          color: AppColorsData.regular().greyShades_2,
        ),
        quicksandBodyTiny: TextStyle(
          fontFamily: 'Poppins',
          package: 'asgard_core',
          fontWeight: FontWeight.w400,
          fontSize: 9,
          color: AppColorsData.regular().greyShades_2,
        ),
        sourceSansProBodyBold: TextStyle(
          fontWeight: FontWeight.w700,
          fontFamily: "SourceSansPro",
          fontStyle: FontStyle.normal,
          fontSize: 20,
          color: AppColorsData.regular().greyShades_2,
        ),
        sourceSansProBodySemibold: TextStyle(
          fontWeight: FontWeight.w600,
          fontFamily: "SourceSansPro",
          fontStyle: FontStyle.normal,
          fontSize: 17,
          color: AppColorsData.regular().greyShades_2,
        ),
        sourceSansProBody: TextStyle(
          fontWeight: FontWeight.w400,
          fontFamily: "SourceSansPro",
          fontStyle: FontStyle.normal,
          fontSize: 17,
          color: AppColorsData.regular().greyShades_2,
        ),
        sourceSansProBodySmall: TextStyle(
          fontWeight: FontWeight.w400,
          fontFamily: "SourceSansPro",
          fontStyle: FontStyle.normal,
          fontSize: 15,
          color: AppColorsData.regular().greyShades_2,
        ),
        sourceSansProBody1: TextStyle(
          fontWeight: FontWeight.w400,
          fontFamily: "SourceSansPro",
          fontStyle: FontStyle.normal,
          fontSize: 11,
          color: AppColorsData.regular().greyShades_2,
        ),
        lavina: TextStyle(
          fontWeight: FontWeight.w400,
          fontFamily: "Lancelot",
          fontStyle: FontStyle.normal,
          fontSize: 12,
          color: AppColorsData.regular().greyShades_2,
        ),
      );

  factory AppTypographyData.greyShades_3() => AppTypographyData(
        quicksandResultScore: TextStyle(
          fontWeight: FontWeight.w600,
          fontFamily: "Quicksand",
          fontStyle: FontStyle.normal,
          fontSize: 48,
          color: AppColorsData.regular().greyShades_3,
        ),
        quicksandTitle: TextStyle(
          fontWeight: FontWeight.w400,
          fontFamily: "Quicksand",
          fontStyle: FontStyle.normal,
          fontSize: 48,
          color: AppColorsData.regular().greyShades_3,
        ),
        quicksandTitle1: TextStyle(
          fontWeight: FontWeight.w700,
          fontFamily: "Quicksand",
          fontStyle: FontStyle.normal,
          fontSize: 28,
          color: AppColorsData.regular().greyShades_3,
        ),
        quicksandTitle2: TextStyle(
          fontWeight: FontWeight.w700,
          fontFamily: "Quicksand",
          fontStyle: FontStyle.normal,
          fontSize: 24,
          color: AppColorsData.regular().greyShades_3,
        ),
        quicksandBody: TextStyle(
          fontWeight: FontWeight.w700,
          fontFamily: "Quicksand",
          fontStyle: FontStyle.normal,
          fontSize: 17,
          color: AppColorsData.regular().greyShades_3,
        ),
        quicksandBodySmall: TextStyle(
          fontWeight: FontWeight.w700,
          fontFamily: "Quicksand",
          fontStyle: FontStyle.normal,
          fontSize: 15,
          color: AppColorsData.regular().greyShades_3,
        ),
        quicksandSmallButton: TextStyle(
          fontWeight: FontWeight.w700,
          fontFamily: "Quicksand",
          fontStyle: FontStyle.normal,
          fontSize: 13,
          color: AppColorsData.regular().greyShades_3,
        ),
        quicksandBodyTiny: TextStyle(
          fontFamily: 'Poppins',
          package: 'asgard_core',
          fontWeight: FontWeight.w400,
          fontSize: 9,
          color: AppColorsData.regular().greyShades_3,
        ),
        sourceSansProBodyBold: TextStyle(
          fontWeight: FontWeight.w700,
          fontFamily: "SourceSansPro",
          fontStyle: FontStyle.normal,
          fontSize: 20,
          color: AppColorsData.regular().greyShades_3,
        ),
        sourceSansProBodySemibold: TextStyle(
          fontWeight: FontWeight.w600,
          fontFamily: "SourceSansPro",
          fontStyle: FontStyle.normal,
          fontSize: 17,
          color: AppColorsData.regular().greyShades_3,
        ),
        sourceSansProBody: TextStyle(
          fontWeight: FontWeight.w400,
          fontFamily: "SourceSansPro",
          fontStyle: FontStyle.normal,
          fontSize: 17,
          color: AppColorsData.regular().greyShades_3,
        ),
        sourceSansProBodySmall: TextStyle(
          fontWeight: FontWeight.w400,
          fontFamily: "SourceSansPro",
          fontStyle: FontStyle.normal,
          fontSize: 15,
          color: AppColorsData.regular().greyShades_3,
        ),
        sourceSansProBody1: TextStyle(
          fontWeight: FontWeight.w400,
          fontFamily: "SourceSansPro",
          fontStyle: FontStyle.normal,
          fontSize: 11,
          color: AppColorsData.regular().greyShades_3,
        ),
        lavina: TextStyle(
          fontWeight: FontWeight.w400,
          fontFamily: "Lancelot",
          fontStyle: FontStyle.normal,
          fontSize: 12,
          color: AppColorsData.regular().greyShades_3,
        ),
      );

  factory AppTypographyData.greyShades_4() => AppTypographyData(
        quicksandResultScore: TextStyle(
          fontWeight: FontWeight.w600,
          fontFamily: "Quicksand",
          fontStyle: FontStyle.normal,
          fontSize: 48,
          color: AppColorsData.regular().greyShades_4,
        ),
        quicksandTitle: TextStyle(
          fontWeight: FontWeight.w400,
          fontFamily: "Quicksand",
          fontStyle: FontStyle.normal,
          fontSize: 48,
          color: AppColorsData.regular().greyShades_4,
        ),
        quicksandTitle1: TextStyle(
          fontWeight: FontWeight.w700,
          fontFamily: "Quicksand",
          fontStyle: FontStyle.normal,
          fontSize: 28,
          color: AppColorsData.regular().greyShades_4,
        ),
        quicksandTitle2: TextStyle(
          fontWeight: FontWeight.w700,
          fontFamily: "Quicksand",
          fontStyle: FontStyle.normal,
          fontSize: 24,
          color: AppColorsData.regular().greyShades_4,
        ),
        quicksandBody: TextStyle(
          fontWeight: FontWeight.w700,
          fontFamily: "Quicksand",
          fontStyle: FontStyle.normal,
          fontSize: 17,
          color: AppColorsData.regular().greyShades_4,
        ),
        quicksandBodySmall: TextStyle(
          fontWeight: FontWeight.w700,
          fontFamily: "Quicksand",
          fontStyle: FontStyle.normal,
          fontSize: 15,
          color: AppColorsData.regular().greyShades_4,
        ),
        quicksandSmallButton: TextStyle(
          fontWeight: FontWeight.w700,
          fontFamily: "Quicksand",
          fontStyle: FontStyle.normal,
          fontSize: 13,
          color: AppColorsData.regular().greyShades_4,
        ),
        quicksandBodyTiny: TextStyle(
          fontFamily: 'Poppins',
          package: 'asgard_core',
          fontWeight: FontWeight.w400,
          fontSize: 9,
          color: AppColorsData.regular().greyShades_4,
        ),
        sourceSansProBodyBold: TextStyle(
          fontWeight: FontWeight.w700,
          fontFamily: "SourceSansPro",
          fontStyle: FontStyle.normal,
          fontSize: 20,
          color: AppColorsData.regular().greyShades_4,
        ),
        sourceSansProBodySemibold: TextStyle(
          fontWeight: FontWeight.w600,
          fontFamily: "SourceSansPro",
          fontStyle: FontStyle.normal,
          fontSize: 17,
          color: AppColorsData.regular().greyShades_4,
        ),
        sourceSansProBody: TextStyle(
          fontWeight: FontWeight.w400,
          fontFamily: "SourceSansPro",
          fontStyle: FontStyle.normal,
          fontSize: 17,
          color: AppColorsData.regular().greyShades_4,
        ),
        sourceSansProBodySmall: TextStyle(
          fontWeight: FontWeight.w400,
          fontFamily: "SourceSansPro",
          fontStyle: FontStyle.normal,
          fontSize: 15,
          color: AppColorsData.regular().greyShades_4,
        ),
        sourceSansProBody1: TextStyle(
          fontWeight: FontWeight.w400,
          fontFamily: "SourceSansPro",
          fontStyle: FontStyle.normal,
          fontSize: 11,
          color: AppColorsData.regular().greyShades_4,
        ),
        lavina: TextStyle(
          fontWeight: FontWeight.w400,
          fontFamily: "Lancelot",
          fontStyle: FontStyle.normal,
          fontSize: 12,
          color: AppColorsData.regular().greyShades_4,
        ),
      );

  factory AppTypographyData.greyShades_5() => AppTypographyData(
        quicksandResultScore: TextStyle(
          fontWeight: FontWeight.w600,
          fontFamily: "Quicksand",
          fontStyle: FontStyle.normal,
          fontSize: 48,
          color: AppColorsData.regular().greyShades_5,
        ),
        quicksandTitle: TextStyle(
          fontWeight: FontWeight.w400,
          fontFamily: "Quicksand",
          fontStyle: FontStyle.normal,
          fontSize: 48,
          color: AppColorsData.regular().greyShades_5,
        ),
        quicksandTitle1: TextStyle(
          fontWeight: FontWeight.w700,
          fontFamily: "Quicksand",
          fontStyle: FontStyle.normal,
          fontSize: 28,
          color: AppColorsData.regular().greyShades_5,
        ),
        quicksandTitle2: TextStyle(
          fontWeight: FontWeight.w700,
          fontFamily: "Quicksand",
          fontStyle: FontStyle.normal,
          fontSize: 24,
          color: AppColorsData.regular().greyShades_5,
        ),
        quicksandBody: TextStyle(
          fontWeight: FontWeight.w700,
          fontFamily: "Quicksand",
          fontStyle: FontStyle.normal,
          fontSize: 17,
          color: AppColorsData.regular().greyShades_5,
        ),
        quicksandBodySmall: TextStyle(
          fontWeight: FontWeight.w700,
          fontFamily: "Quicksand",
          fontStyle: FontStyle.normal,
          fontSize: 15,
          color: AppColorsData.regular().greyShades_5,
        ),
        quicksandSmallButton: TextStyle(
          fontWeight: FontWeight.w700,
          fontFamily: "Quicksand",
          fontStyle: FontStyle.normal,
          fontSize: 13,
          color: AppColorsData.regular().greyShades_5,
        ),
        quicksandBodyTiny: TextStyle(
          fontFamily: 'Poppins',
          package: 'asgard_core',
          fontWeight: FontWeight.w400,
          fontSize: 9,
          color: AppColorsData.regular().greyShades_5,
        ),
        sourceSansProBodyBold: TextStyle(
          fontWeight: FontWeight.w700,
          fontFamily: "SourceSansPro",
          fontStyle: FontStyle.normal,
          fontSize: 20,
          color: AppColorsData.regular().greyShades_5,
        ),
        sourceSansProBodySemibold: TextStyle(
          fontWeight: FontWeight.w600,
          fontFamily: "SourceSansPro",
          fontStyle: FontStyle.normal,
          fontSize: 17,
          color: AppColorsData.regular().greyShades_5,
        ),
        sourceSansProBody: TextStyle(
          fontWeight: FontWeight.w400,
          fontFamily: "SourceSansPro",
          fontStyle: FontStyle.normal,
          fontSize: 17,
          color: AppColorsData.regular().greyShades_5,
        ),
        sourceSansProBodySmall: TextStyle(
          fontWeight: FontWeight.w400,
          fontFamily: "SourceSansPro",
          fontStyle: FontStyle.normal,
          fontSize: 15,
          color: AppColorsData.regular().greyShades_5,
        ),
        sourceSansProBody1: TextStyle(
          fontWeight: FontWeight.w400,
          fontFamily: "SourceSansPro",
          fontStyle: FontStyle.normal,
          fontSize: 11,
          color: AppColorsData.regular().greyShades_5,
        ),
        lavina: TextStyle(
          fontWeight: FontWeight.w400,
          fontFamily: "Lancelot",
          fontStyle: FontStyle.normal,
          fontSize: 12,
          color: AppColorsData.regular().greyShades_5,
        ),
      );

  factory AppTypographyData.greyShades_6() => AppTypographyData(
        quicksandResultScore: TextStyle(
          fontWeight: FontWeight.w600,
          fontFamily: "Quicksand",
          fontStyle: FontStyle.normal,
          fontSize: 48,
          color: AppColorsData.regular().greyShades_6,
        ),
        quicksandTitle: TextStyle(
          fontWeight: FontWeight.w400,
          fontFamily: "Quicksand",
          fontStyle: FontStyle.normal,
          fontSize: 48,
          color: AppColorsData.regular().greyShades_6,
        ),
        quicksandTitle1: TextStyle(
          fontWeight: FontWeight.w700,
          fontFamily: "Quicksand",
          fontStyle: FontStyle.normal,
          fontSize: 28,
          color: AppColorsData.regular().greyShades_6,
        ),
        quicksandTitle2: TextStyle(
          fontWeight: FontWeight.w700,
          fontFamily: "Quicksand",
          fontStyle: FontStyle.normal,
          fontSize: 24,
          color: AppColorsData.regular().greyShades_6,
        ),
        quicksandBody: TextStyle(
          fontWeight: FontWeight.w700,
          fontFamily: "Quicksand",
          fontStyle: FontStyle.normal,
          fontSize: 17,
          color: AppColorsData.regular().greyShades_6,
        ),
        quicksandBodySmall: TextStyle(
          fontWeight: FontWeight.w700,
          fontFamily: "Quicksand",
          fontStyle: FontStyle.normal,
          fontSize: 15,
          color: AppColorsData.regular().greyShades_6,
        ),
        quicksandSmallButton: TextStyle(
          fontWeight: FontWeight.w700,
          fontFamily: "Quicksand",
          fontStyle: FontStyle.normal,
          fontSize: 13,
          color: AppColorsData.regular().greyShades_6,
        ),
        quicksandBodyTiny: TextStyle(
          fontFamily: 'Poppins',
          package: 'asgard_core',
          fontWeight: FontWeight.w400,
          fontSize: 9,
          color: AppColorsData.regular().greyShades_6,
        ),
        sourceSansProBodyBold: TextStyle(
          fontWeight: FontWeight.w700,
          fontFamily: "SourceSansPro",
          fontStyle: FontStyle.normal,
          fontSize: 20,
          color: AppColorsData.regular().greyShades_6,
        ),
        sourceSansProBodySemibold: TextStyle(
          fontWeight: FontWeight.w600,
          fontFamily: "SourceSansPro",
          fontStyle: FontStyle.normal,
          fontSize: 17,
          color: AppColorsData.regular().greyShades_6,
        ),
        sourceSansProBody: TextStyle(
          fontWeight: FontWeight.w400,
          fontFamily: "SourceSansPro",
          fontStyle: FontStyle.normal,
          fontSize: 17,
          color: AppColorsData.regular().greyShades_6,
        ),
        sourceSansProBodySmall: TextStyle(
          fontWeight: FontWeight.w400,
          fontFamily: "SourceSansPro",
          fontStyle: FontStyle.normal,
          fontSize: 15,
          color: AppColorsData.regular().greyShades_6,
        ),
        sourceSansProBody1: TextStyle(
          fontWeight: FontWeight.w400,
          fontFamily: "SourceSansPro",
          fontStyle: FontStyle.normal,
          fontSize: 11,
          color: AppColorsData.regular().greyShades_6,
        ),
        lavina: TextStyle(
          fontWeight: FontWeight.w400,
          fontFamily: "Lancelot",
          fontStyle: FontStyle.normal,
          fontSize: 12,
          color: AppColorsData.regular().greyShades_6,
        ),
      );

  factory AppTypographyData.primaryWhite() => AppTypographyData(
        quicksandResultScore: TextStyle(
          fontWeight: FontWeight.w600,
          fontFamily: "Quicksand",
          fontStyle: FontStyle.normal,
          fontSize: 48,
          color: AppColorsData.regular().primaryWhite,
        ),
        quicksandTitle: TextStyle(
          fontWeight: FontWeight.w400,
          fontFamily: "Quicksand",
          fontStyle: FontStyle.normal,
          fontSize: 48,
          color: AppColorsData.regular().primaryWhite,
        ),
        quicksandTitle1: TextStyle(
          fontWeight: FontWeight.w700,
          fontFamily: "Quicksand",
          fontStyle: FontStyle.normal,
          fontSize: 28,
          color: AppColorsData.regular().primaryWhite,
        ),
        quicksandTitle2: TextStyle(
          fontWeight: FontWeight.w700,
          fontFamily: "Quicksand",
          fontStyle: FontStyle.normal,
          fontSize: 24,
          color: AppColorsData.regular().primaryWhite,
        ),
        quicksandBody: TextStyle(
          fontWeight: FontWeight.w700,
          fontFamily: "Quicksand",
          fontStyle: FontStyle.normal,
          fontSize: 17,
          color: AppColorsData.regular().primaryWhite,
        ),
        quicksandBodySmall: TextStyle(
          fontWeight: FontWeight.w700,
          fontFamily: "Quicksand",
          fontStyle: FontStyle.normal,
          fontSize: 15,
          color: AppColorsData.regular().primaryWhite,
        ),
        quicksandSmallButton: TextStyle(
          fontWeight: FontWeight.w700,
          fontFamily: "Quicksand",
          fontStyle: FontStyle.normal,
          fontSize: 13,
          color: AppColorsData.regular().primaryWhite,
        ),
        quicksandBodyTiny: TextStyle(
          fontFamily: 'Poppins',
          package: 'asgard_core',
          fontWeight: FontWeight.w400,
          fontSize: 9,
          color: AppColorsData.regular().primaryWhite,
        ),
        sourceSansProBodyBold: TextStyle(
          fontWeight: FontWeight.w700,
          fontFamily: "SourceSansPro",
          fontStyle: FontStyle.normal,
          fontSize: 20,
          color: AppColorsData.regular().primaryWhite,
        ),
        sourceSansProBodySemibold: TextStyle(
          fontWeight: FontWeight.w600,
          fontFamily: "SourceSansPro",
          fontStyle: FontStyle.normal,
          fontSize: 17,
          color: AppColorsData.regular().primaryWhite,
        ),
        sourceSansProBody: TextStyle(
          fontWeight: FontWeight.w400,
          fontFamily: "SourceSansPro",
          fontStyle: FontStyle.normal,
          fontSize: 17,
          color: AppColorsData.regular().primaryWhite,
        ),
        sourceSansProBodySmall: TextStyle(
          fontWeight: FontWeight.w400,
          fontFamily: "SourceSansPro",
          fontStyle: FontStyle.normal,
          fontSize: 15,
          color: AppColorsData.regular().primaryWhite,
        ),
        sourceSansProBody1: TextStyle(
          fontWeight: FontWeight.w400,
          fontFamily: "SourceSansPro",
          fontStyle: FontStyle.normal,
          fontSize: 11,
          color: AppColorsData.regular().primaryWhite,
        ),
        lavina: TextStyle(
          fontWeight: FontWeight.w400,
          fontFamily: "Lancelot",
          fontStyle: FontStyle.normal,
          fontSize: 12,
          color: AppColorsData.regular().primaryWhite,
        ),
      );

  // factory AppTypographyData.small() => const AppTypographyData();

  final TextStyle quicksandResultScore;
  final TextStyle quicksandTitle;
  final TextStyle quicksandTitle1;
  final TextStyle quicksandTitle2;
  final TextStyle quicksandBody;
  final TextStyle quicksandBodySmall;
  final TextStyle quicksandSmallButton;
  final TextStyle quicksandBodyTiny;

  final TextStyle sourceSansProBodyBold;
  final TextStyle sourceSansProBodySemibold;
  final TextStyle sourceSansProBody;
  final TextStyle sourceSansProBodySmall;
  final TextStyle sourceSansProBody1;
  final TextStyle lavina;

  @override
  List<Object?> get props => [
        quicksandResultScore.named('quicksandResultScore'),
        quicksandTitle.named('quicksandTitle'),
        quicksandTitle1.named('quicksandTitle1'),
        quicksandTitle2.named('quicksandTitle2'),
        quicksandBody.named('quicksandBody'),
        quicksandBodySmall.named('quicksandBodySmall'),
        quicksandSmallButton.named('quicksandSmallButton'),
        quicksandBodyTiny.named('quicksandBodyTiny'),
        sourceSansProBodyBold.named('sourceSansProBodyBold'),
        sourceSansProBodySemibold.named('sourceSansProBodySemibold'),
        sourceSansProBody.named('sourceSansProBody'),
        sourceSansProBodySmall.named('sourceSansProBodySmall'),
        sourceSansProBody1.named('sourceSansProBody1'),
        lavina.named('lavina'),
      ];
}
