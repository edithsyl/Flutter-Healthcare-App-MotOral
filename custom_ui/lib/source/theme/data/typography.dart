import 'package:custom_ui/source/utils/named.dart';
import 'package:equatable/equatable.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../custom_ui.dart';

class AppTypographyData extends Equatable {
  static const _packageName = 'custom_ui';

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

  factory AppTypographyData.noColor() => AppTypographyData(
        quicksandResultScore: GoogleFonts.quicksand(
          fontWeight: FontWeight.w600,
          fontStyle: FontStyle.normal,
          fontSize: 48,
        ),
        quicksandTitle: GoogleFonts.quicksand(
          fontWeight: FontWeight.w400,
          fontStyle: FontStyle.normal,
          fontSize: 48,
        ),
        quicksandTitle1: GoogleFonts.quicksand(
          fontWeight: FontWeight.w700,
          fontStyle: FontStyle.normal,
          fontSize: 28,
        ),
        quicksandTitle2: GoogleFonts.quicksand(
          fontWeight: FontWeight.w700,
          fontStyle: FontStyle.normal,
          fontSize: 24,
        ),
        quicksandBody: GoogleFonts.quicksand(
          fontWeight: FontWeight.w700,
          fontStyle: FontStyle.normal,
          fontSize: 17,
        ),
        quicksandBodySmall: GoogleFonts.quicksand(
          fontWeight: FontWeight.w700,
          fontStyle: FontStyle.normal,
          fontSize: 15,
        ),
        quicksandSmallButton: GoogleFonts.quicksand(
          fontWeight: FontWeight.w700,
          fontStyle: FontStyle.normal,
          fontSize: 13,
        ),
        quicksandBodyTiny: GoogleFonts.quicksand(
          fontWeight: FontWeight.w400,
          fontSize: 9,
        ),
        sourceSansProBodyBold: GoogleFonts.sourceSansPro(
          fontWeight: FontWeight.w700,
          fontStyle: FontStyle.normal,
          fontSize: 20,
        ),
        sourceSansProBodySemibold: GoogleFonts.sourceSansPro(
          fontWeight: FontWeight.w600,
          fontStyle: FontStyle.normal,
          fontSize: 17,
        ),
        sourceSansProBody: GoogleFonts.sourceSansPro(
          fontWeight: FontWeight.w400,
          fontStyle: FontStyle.normal,
          fontSize: 17,
        ),
        sourceSansProBodySmall: GoogleFonts.sourceSansPro(
          fontWeight: FontWeight.w400,
          fontStyle: FontStyle.normal,
          fontSize: 15,
        ),
        sourceSansProBody1: GoogleFonts.sourceSansPro(
          fontWeight: FontWeight.w400,
          fontStyle: FontStyle.normal,
          fontSize: 11,
        ),
        lavina: GoogleFonts.yesevaOne(
          fontWeight: FontWeight.w400,
          fontStyle: FontStyle.normal,
          fontSize: 12,
        ),
      );

  factory AppTypographyData.primaryOrange() => AppTypographyData(
        quicksandResultScore: GoogleFonts.quicksand(
          fontWeight: FontWeight.w600,
          fontStyle: FontStyle.normal,
          fontSize: 48,
          color: AppColorsData.regular().primaryOrange,
        ),
        quicksandTitle: GoogleFonts.quicksand(
          fontWeight: FontWeight.w400,
          fontStyle: FontStyle.normal,
          fontSize: 48,
          color: AppColorsData.regular().primaryOrange,
        ),
        quicksandTitle1: GoogleFonts.quicksand(
          fontWeight: FontWeight.w700,
          fontStyle: FontStyle.normal,
          fontSize: 28,
          color: AppColorsData.regular().primaryOrange,
        ),
        quicksandTitle2: GoogleFonts.quicksand(
          fontWeight: FontWeight.w700,
          fontStyle: FontStyle.normal,
          fontSize: 24,
          color: AppColorsData.regular().primaryOrange,
        ),
        quicksandBody: GoogleFonts.quicksand(
          fontWeight: FontWeight.w700,
          fontStyle: FontStyle.normal,
          fontSize: 17,
          color: AppColorsData.regular().primaryOrange,
        ),
        quicksandBodySmall: GoogleFonts.quicksand(
          fontWeight: FontWeight.w700,
          fontStyle: FontStyle.normal,
          fontSize: 15,
          color: AppColorsData.regular().primaryOrange,
        ),
        quicksandSmallButton: GoogleFonts.quicksand(
          fontWeight: FontWeight.w700,
          fontStyle: FontStyle.normal,
          fontSize: 13,
          color: AppColorsData.regular().primaryOrange,
        ),
        quicksandBodyTiny: GoogleFonts.quicksand(
          fontWeight: FontWeight.w400,
          fontSize: 9,
          color: AppColorsData.regular().primaryOrange,
        ),
        sourceSansProBodyBold: GoogleFonts.sourceSansPro(
          fontWeight: FontWeight.w700,
          fontStyle: FontStyle.normal,
          fontSize: 20,
          color: AppColorsData.regular().primaryOrange,
        ),
        sourceSansProBodySemibold: GoogleFonts.sourceSansPro(
          fontWeight: FontWeight.w600,
          fontStyle: FontStyle.normal,
          fontSize: 17,
          color: AppColorsData.regular().primaryOrange,
        ),
        sourceSansProBody: GoogleFonts.sourceSansPro(
          fontWeight: FontWeight.w400,
          fontStyle: FontStyle.normal,
          fontSize: 17,
          color: AppColorsData.regular().primaryOrange,
        ),
        sourceSansProBodySmall: GoogleFonts.sourceSansPro(
          fontWeight: FontWeight.w400,
          fontStyle: FontStyle.normal,
          fontSize: 15,
          color: AppColorsData.regular().primaryOrange,
        ),
        sourceSansProBody1: GoogleFonts.sourceSansPro(
          fontWeight: FontWeight.w400,
          fontStyle: FontStyle.normal,
          fontSize: 11,
          color: AppColorsData.regular().primaryOrange,
        ),
        lavina: GoogleFonts.yesevaOne(
          fontWeight: FontWeight.w400,
          fontStyle: FontStyle.normal,
          fontSize: 12,
          color: AppColorsData.regular().primaryOrange,
        ),
      );

  factory AppTypographyData.primaryHighlightBlue() => AppTypographyData(
        quicksandResultScore: GoogleFonts.quicksand(
          fontWeight: FontWeight.w600,
          fontStyle: FontStyle.normal,
          fontSize: 48,
          color: AppColorsData.regular().primaryHighlightBlue,
        ),
        quicksandTitle: GoogleFonts.quicksand(
          fontWeight: FontWeight.w400,
          fontStyle: FontStyle.normal,
          fontSize: 48,
          color: AppColorsData.regular().primaryHighlightBlue,
        ),
        quicksandTitle1: GoogleFonts.quicksand(
          fontWeight: FontWeight.w700,
          fontStyle: FontStyle.normal,
          fontSize: 28,
          color: AppColorsData.regular().primaryHighlightBlue,
        ),
        quicksandTitle2: GoogleFonts.quicksand(
          fontWeight: FontWeight.w700,
          fontStyle: FontStyle.normal,
          fontSize: 24,
          color: AppColorsData.regular().primaryHighlightBlue,
        ),
        quicksandBody: GoogleFonts.quicksand(
          fontWeight: FontWeight.w700,
          fontStyle: FontStyle.normal,
          fontSize: 17,
          color: AppColorsData.regular().primaryHighlightBlue,
        ),
        quicksandBodySmall: GoogleFonts.quicksand(
          fontWeight: FontWeight.w700,
          fontStyle: FontStyle.normal,
          fontSize: 15,
          color: AppColorsData.regular().primaryHighlightBlue,
        ),
        quicksandSmallButton: GoogleFonts.quicksand(
          fontWeight: FontWeight.w700,
          fontStyle: FontStyle.normal,
          fontSize: 13,
          color: AppColorsData.regular().primaryHighlightBlue,
        ),
        quicksandBodyTiny: GoogleFonts.quicksand(
          fontWeight: FontWeight.w400,
          fontSize: 9,
          color: AppColorsData.regular().primaryHighlightBlue,
        ),
        sourceSansProBodyBold: GoogleFonts.sourceSansPro(
          fontWeight: FontWeight.w700,
          fontStyle: FontStyle.normal,
          fontSize: 20,
          color: AppColorsData.regular().primaryHighlightBlue,
        ),
        sourceSansProBodySemibold: GoogleFonts.sourceSansPro(
          fontWeight: FontWeight.w600,
          fontStyle: FontStyle.normal,
          fontSize: 17,
          color: AppColorsData.regular().primaryHighlightBlue,
        ),
        sourceSansProBody: GoogleFonts.sourceSansPro(
          fontWeight: FontWeight.w400,
          fontStyle: FontStyle.normal,
          fontSize: 17,
          color: AppColorsData.regular().primaryHighlightBlue,
        ),
        sourceSansProBodySmall: GoogleFonts.sourceSansPro(
          fontWeight: FontWeight.w400,
          fontStyle: FontStyle.normal,
          fontSize: 15,
          color: AppColorsData.regular().primaryHighlightBlue,
        ),
        sourceSansProBody1: GoogleFonts.sourceSansPro(
          fontWeight: FontWeight.w400,
          fontStyle: FontStyle.normal,
          fontSize: 11,
          color: AppColorsData.regular().primaryHighlightBlue,
        ),
        lavina: GoogleFonts.yesevaOne(
          fontWeight: FontWeight.w400,
          fontStyle: FontStyle.normal,
          fontSize: 12,
          color: AppColorsData.regular().primaryHighlightBlue,
        ),
      );

  factory AppTypographyData.greyShades_2() => AppTypographyData(
        quicksandResultScore: GoogleFonts.quicksand(
          fontWeight: FontWeight.w600,
          fontStyle: FontStyle.normal,
          fontSize: 48,
          color: AppColorsData.regular().greyShades_2,
        ),
        quicksandTitle: GoogleFonts.quicksand(
          fontWeight: FontWeight.w400,
          fontStyle: FontStyle.normal,
          fontSize: 48,
          color: AppColorsData.regular().greyShades_2,
        ),
        quicksandTitle1: GoogleFonts.quicksand(
          fontWeight: FontWeight.w700,
          fontStyle: FontStyle.normal,
          fontSize: 28,
          color: AppColorsData.regular().greyShades_2,
        ),
        quicksandTitle2: GoogleFonts.quicksand(
          fontWeight: FontWeight.w700,
          fontStyle: FontStyle.normal,
          fontSize: 24,
          color: AppColorsData.regular().greyShades_2,
        ),
        quicksandBody: GoogleFonts.quicksand(
          fontWeight: FontWeight.w700,
          fontStyle: FontStyle.normal,
          fontSize: 17,
          color: AppColorsData.regular().greyShades_2,
        ),
        quicksandBodySmall: GoogleFonts.quicksand(
          fontWeight: FontWeight.w700,
          fontStyle: FontStyle.normal,
          fontSize: 15,
          color: AppColorsData.regular().greyShades_2,
        ),
        quicksandSmallButton: GoogleFonts.quicksand(
          fontWeight: FontWeight.w700,
          fontStyle: FontStyle.normal,
          fontSize: 13,
          color: AppColorsData.regular().greyShades_2,
        ),
        quicksandBodyTiny: GoogleFonts.quicksand(
          fontWeight: FontWeight.w400,
          fontSize: 9,
          color: AppColorsData.regular().greyShades_2,
        ),
        sourceSansProBodyBold: GoogleFonts.sourceSansPro(
          fontWeight: FontWeight.w700,
          fontStyle: FontStyle.normal,
          fontSize: 20,
          color: AppColorsData.regular().greyShades_2,
        ),
        sourceSansProBodySemibold: GoogleFonts.sourceSansPro(
          fontWeight: FontWeight.w600,
          fontStyle: FontStyle.normal,
          fontSize: 17,
          color: AppColorsData.regular().greyShades_2,
        ),
        sourceSansProBody: GoogleFonts.sourceSansPro(
          fontWeight: FontWeight.w400,
          fontStyle: FontStyle.normal,
          fontSize: 17,
          color: AppColorsData.regular().greyShades_2,
        ),
        sourceSansProBodySmall: GoogleFonts.sourceSansPro(
          fontWeight: FontWeight.w400,
          fontStyle: FontStyle.normal,
          fontSize: 15,
          color: AppColorsData.regular().greyShades_2,
        ),
        sourceSansProBody1: GoogleFonts.sourceSansPro(
          fontWeight: FontWeight.w400,
          fontStyle: FontStyle.normal,
          fontSize: 11,
          color: AppColorsData.regular().greyShades_2,
        ),
        lavina: GoogleFonts.yesevaOne(
          fontWeight: FontWeight.w400,
          fontStyle: FontStyle.normal,
          fontSize: 12,
          color: AppColorsData.regular().greyShades_2,
        ),
      );

  factory AppTypographyData.greyShades_3() => AppTypographyData(
        quicksandResultScore: GoogleFonts.quicksand(
          fontWeight: FontWeight.w600,
          fontStyle: FontStyle.normal,
          fontSize: 48,
          color: AppColorsData.regular().greyShades_3,
        ),
        quicksandTitle: GoogleFonts.quicksand(
          fontWeight: FontWeight.w400,
          fontStyle: FontStyle.normal,
          fontSize: 48,
          color: AppColorsData.regular().greyShades_3,
        ),
        quicksandTitle1: GoogleFonts.quicksand(
          fontWeight: FontWeight.w700,
          fontStyle: FontStyle.normal,
          fontSize: 28,
          color: AppColorsData.regular().greyShades_3,
        ),
        quicksandTitle2: GoogleFonts.quicksand(
          fontWeight: FontWeight.w700,
          fontStyle: FontStyle.normal,
          fontSize: 24,
          color: AppColorsData.regular().greyShades_3,
        ),
        quicksandBody: GoogleFonts.quicksand(
          fontWeight: FontWeight.w700,
          fontStyle: FontStyle.normal,
          fontSize: 17,
          color: AppColorsData.regular().greyShades_3,
        ),
        quicksandBodySmall: GoogleFonts.quicksand(
          fontWeight: FontWeight.w700,
          fontStyle: FontStyle.normal,
          fontSize: 15,
          color: AppColorsData.regular().greyShades_3,
        ),
        quicksandSmallButton: GoogleFonts.quicksand(
          fontWeight: FontWeight.w700,
          fontStyle: FontStyle.normal,
          fontSize: 13,
          color: AppColorsData.regular().greyShades_3,
        ),
        quicksandBodyTiny: GoogleFonts.quicksand(
          fontWeight: FontWeight.w400,
          fontSize: 9,
          color: AppColorsData.regular().greyShades_3,
        ),
        sourceSansProBodyBold: GoogleFonts.sourceSansPro(
          fontWeight: FontWeight.w700,
          fontStyle: FontStyle.normal,
          fontSize: 20,
          color: AppColorsData.regular().greyShades_3,
        ),
        sourceSansProBodySemibold: GoogleFonts.sourceSansPro(
          fontWeight: FontWeight.w600,
          fontStyle: FontStyle.normal,
          fontSize: 17,
          color: AppColorsData.regular().greyShades_3,
        ),
        sourceSansProBody: GoogleFonts.sourceSansPro(
          fontWeight: FontWeight.w400,
          fontStyle: FontStyle.normal,
          fontSize: 17,
          color: AppColorsData.regular().greyShades_3,
        ),
        sourceSansProBodySmall: GoogleFonts.sourceSansPro(
          fontWeight: FontWeight.w400,
          fontStyle: FontStyle.normal,
          fontSize: 15,
          color: AppColorsData.regular().greyShades_3,
        ),
        sourceSansProBody1: GoogleFonts.sourceSansPro(
          fontWeight: FontWeight.w400,
          fontStyle: FontStyle.normal,
          fontSize: 11,
          color: AppColorsData.regular().greyShades_3,
        ),
        lavina: GoogleFonts.yesevaOne(
          fontWeight: FontWeight.w400,
          fontStyle: FontStyle.normal,
          fontSize: 12,
          color: AppColorsData.regular().greyShades_3,
        ),
      );

  factory AppTypographyData.greyShades_4() => AppTypographyData(
        quicksandResultScore: GoogleFonts.quicksand(
          fontWeight: FontWeight.w600,
          fontStyle: FontStyle.normal,
          fontSize: 48,
          color: AppColorsData.regular().greyShades_4,
        ),
        quicksandTitle: GoogleFonts.quicksand(
          fontWeight: FontWeight.w400,
          fontStyle: FontStyle.normal,
          fontSize: 48,
          color: AppColorsData.regular().greyShades_4,
        ),
        quicksandTitle1: GoogleFonts.quicksand(
          fontWeight: FontWeight.w700,
          fontStyle: FontStyle.normal,
          fontSize: 28,
          color: AppColorsData.regular().greyShades_4,
        ),
        quicksandTitle2: GoogleFonts.quicksand(
          fontWeight: FontWeight.w700,
          fontStyle: FontStyle.normal,
          fontSize: 24,
          color: AppColorsData.regular().greyShades_4,
        ),
        quicksandBody: GoogleFonts.quicksand(
          fontWeight: FontWeight.w700,
          fontStyle: FontStyle.normal,
          fontSize: 17,
          color: AppColorsData.regular().greyShades_4,
        ),
        quicksandBodySmall: GoogleFonts.quicksand(
          fontWeight: FontWeight.w700,
          fontStyle: FontStyle.normal,
          fontSize: 15,
          color: AppColorsData.regular().greyShades_4,
        ),
        quicksandSmallButton: GoogleFonts.quicksand(
          fontWeight: FontWeight.w700,
          fontStyle: FontStyle.normal,
          fontSize: 13,
          color: AppColorsData.regular().greyShades_4,
        ),
        quicksandBodyTiny: GoogleFonts.quicksand(
          fontWeight: FontWeight.w400,
          fontSize: 9,
          color: AppColorsData.regular().greyShades_4,
        ),
        sourceSansProBodyBold: GoogleFonts.sourceSansPro(
          fontWeight: FontWeight.w700,
          fontStyle: FontStyle.normal,
          fontSize: 20,
          color: AppColorsData.regular().greyShades_4,
        ),
        sourceSansProBodySemibold: GoogleFonts.sourceSansPro(
          fontWeight: FontWeight.w600,
          fontStyle: FontStyle.normal,
          fontSize: 17,
          color: AppColorsData.regular().greyShades_4,
        ),
        sourceSansProBody: GoogleFonts.sourceSansPro(
          fontWeight: FontWeight.w400,
          fontStyle: FontStyle.normal,
          fontSize: 17,
          color: AppColorsData.regular().greyShades_4,
        ),
        sourceSansProBodySmall: GoogleFonts.sourceSansPro(
          fontWeight: FontWeight.w400,
          fontStyle: FontStyle.normal,
          fontSize: 15,
          color: AppColorsData.regular().greyShades_4,
        ),
        sourceSansProBody1: GoogleFonts.sourceSansPro(
          fontWeight: FontWeight.w400,
          fontStyle: FontStyle.normal,
          fontSize: 11,
          color: AppColorsData.regular().greyShades_4,
        ),
        lavina: GoogleFonts.yesevaOne(
          fontWeight: FontWeight.w400,
          fontStyle: FontStyle.normal,
          fontSize: 12,
          color: AppColorsData.regular().greyShades_4,
        ),
      );

  factory AppTypographyData.greyShades_5() => AppTypographyData(
        quicksandResultScore: GoogleFonts.quicksand(
          fontWeight: FontWeight.w600,
          fontStyle: FontStyle.normal,
          fontSize: 48,
          color: AppColorsData.regular().greyShades_5,
        ),
        quicksandTitle: GoogleFonts.quicksand(
          fontWeight: FontWeight.w400,
          fontStyle: FontStyle.normal,
          fontSize: 48,
          color: AppColorsData.regular().greyShades_5,
        ),
        quicksandTitle1: GoogleFonts.quicksand(
          fontWeight: FontWeight.w700,
          fontStyle: FontStyle.normal,
          fontSize: 28,
          color: AppColorsData.regular().greyShades_5,
        ),
        quicksandTitle2: GoogleFonts.quicksand(
          fontWeight: FontWeight.w700,
          fontStyle: FontStyle.normal,
          fontSize: 24,
          color: AppColorsData.regular().greyShades_5,
        ),
        quicksandBody: GoogleFonts.quicksand(
          fontWeight: FontWeight.w700,
          fontStyle: FontStyle.normal,
          fontSize: 17,
          color: AppColorsData.regular().greyShades_5,
        ),
        quicksandBodySmall: GoogleFonts.quicksand(
          fontWeight: FontWeight.w700,
          fontStyle: FontStyle.normal,
          fontSize: 15,
          color: AppColorsData.regular().greyShades_5,
        ),
        quicksandSmallButton: GoogleFonts.quicksand(
          fontWeight: FontWeight.w700,
          fontStyle: FontStyle.normal,
          fontSize: 13,
          color: AppColorsData.regular().greyShades_5,
        ),
        quicksandBodyTiny: GoogleFonts.quicksand(
          fontWeight: FontWeight.w400,
          fontSize: 9,
          color: AppColorsData.regular().greyShades_5,
        ),
        sourceSansProBodyBold: GoogleFonts.sourceSansPro(
          fontWeight: FontWeight.w700,
          fontStyle: FontStyle.normal,
          fontSize: 20,
          color: AppColorsData.regular().greyShades_5,
        ),
        sourceSansProBodySemibold: GoogleFonts.sourceSansPro(
          fontWeight: FontWeight.w600,
          fontStyle: FontStyle.normal,
          fontSize: 17,
          color: AppColorsData.regular().greyShades_5,
        ),
        sourceSansProBody: GoogleFonts.sourceSansPro(
          fontWeight: FontWeight.w400,
          fontStyle: FontStyle.normal,
          fontSize: 17,
          color: AppColorsData.regular().greyShades_5,
        ),
        sourceSansProBodySmall: GoogleFonts.sourceSansPro(
          fontWeight: FontWeight.w400,
          fontStyle: FontStyle.normal,
          fontSize: 15,
          color: AppColorsData.regular().greyShades_5,
        ),
        sourceSansProBody1: GoogleFonts.sourceSansPro(
          fontWeight: FontWeight.w400,
          fontStyle: FontStyle.normal,
          fontSize: 11,
          color: AppColorsData.regular().greyShades_5,
        ),
        lavina: GoogleFonts.yesevaOne(
          fontWeight: FontWeight.w400,
          fontStyle: FontStyle.normal,
          fontSize: 12,
          color: AppColorsData.regular().greyShades_5,
        ),
      );

  factory AppTypographyData.greyShades_6() => AppTypographyData(
        quicksandResultScore: GoogleFonts.quicksand(
          fontWeight: FontWeight.w600,
          fontStyle: FontStyle.normal,
          fontSize: 48,
          color: AppColorsData.regular().greyShades_6,
        ),
        quicksandTitle: GoogleFonts.quicksand(
          fontWeight: FontWeight.w400,
          fontStyle: FontStyle.normal,
          fontSize: 48,
          color: AppColorsData.regular().greyShades_6,
        ),
        quicksandTitle1: GoogleFonts.quicksand(
          fontWeight: FontWeight.w700,
          fontStyle: FontStyle.normal,
          fontSize: 28,
          color: AppColorsData.regular().greyShades_6,
        ),
        quicksandTitle2: GoogleFonts.quicksand(
          fontWeight: FontWeight.w700,
          fontStyle: FontStyle.normal,
          fontSize: 24,
          color: AppColorsData.regular().greyShades_6,
        ),
        quicksandBody: GoogleFonts.quicksand(
          fontWeight: FontWeight.w700,
          fontStyle: FontStyle.normal,
          fontSize: 17,
          color: AppColorsData.regular().greyShades_6,
        ),
        quicksandBodySmall: GoogleFonts.quicksand(
          fontWeight: FontWeight.w700,
          fontStyle: FontStyle.normal,
          fontSize: 15,
          color: AppColorsData.regular().greyShades_6,
        ),
        quicksandSmallButton: GoogleFonts.quicksand(
          fontWeight: FontWeight.w700,
          fontStyle: FontStyle.normal,
          fontSize: 13,
          color: AppColorsData.regular().greyShades_6,
        ),
        quicksandBodyTiny: GoogleFonts.quicksand(
          fontWeight: FontWeight.w400,
          fontSize: 9,
          color: AppColorsData.regular().greyShades_6,
        ),
        sourceSansProBodyBold: GoogleFonts.sourceSansPro(
          fontWeight: FontWeight.w700,
          fontStyle: FontStyle.normal,
          fontSize: 20,
          color: AppColorsData.regular().greyShades_6,
        ),
        sourceSansProBodySemibold: GoogleFonts.sourceSansPro(
          fontWeight: FontWeight.w600,
          fontStyle: FontStyle.normal,
          fontSize: 17,
          color: AppColorsData.regular().greyShades_6,
        ),
        sourceSansProBody: GoogleFonts.sourceSansPro(
          fontWeight: FontWeight.w400,
          fontStyle: FontStyle.normal,
          fontSize: 17,
          color: AppColorsData.regular().greyShades_6,
        ),
        sourceSansProBodySmall: GoogleFonts.sourceSansPro(
          fontWeight: FontWeight.w400,
          fontStyle: FontStyle.normal,
          fontSize: 15,
          color: AppColorsData.regular().greyShades_6,
        ),
        sourceSansProBody1: GoogleFonts.sourceSansPro(
          fontWeight: FontWeight.w400,
          fontStyle: FontStyle.normal,
          fontSize: 11,
          color: AppColorsData.regular().greyShades_6,
        ),
        lavina: GoogleFonts.yesevaOne(
          fontWeight: FontWeight.w400,
          fontStyle: FontStyle.normal,
          fontSize: 12,
          color: AppColorsData.regular().greyShades_6,
        ),
      );

  factory AppTypographyData.orangeShadesAlmostBlack() => AppTypographyData(
        quicksandResultScore: GoogleFonts.quicksand(
          fontWeight: FontWeight.w600,
          fontStyle: FontStyle.normal,
          fontSize: 48,
          color: AppColorsData.regular().orangeShadesAlmostBlack,
        ),
        quicksandTitle: GoogleFonts.quicksand(
          fontWeight: FontWeight.w400,
          fontStyle: FontStyle.normal,
          fontSize: 48,
          color: AppColorsData.regular().orangeShadesAlmostBlack,
        ),
        quicksandTitle1: GoogleFonts.quicksand(
          fontWeight: FontWeight.w700,
          fontStyle: FontStyle.normal,
          fontSize: 28,
          color: AppColorsData.regular().orangeShadesAlmostBlack,
        ),
        quicksandTitle2: GoogleFonts.quicksand(
          fontWeight: FontWeight.w700,
          fontStyle: FontStyle.normal,
          fontSize: 24,
          color: AppColorsData.regular().orangeShadesAlmostBlack,
        ),
        quicksandBody: GoogleFonts.quicksand(
          fontWeight: FontWeight.w700,
          fontStyle: FontStyle.normal,
          fontSize: 17,
          color: AppColorsData.regular().orangeShadesAlmostBlack,
        ),
        quicksandBodySmall: GoogleFonts.quicksand(
          fontWeight: FontWeight.w700,
          fontStyle: FontStyle.normal,
          fontSize: 15,
          color: AppColorsData.regular().orangeShadesAlmostBlack,
        ),
        quicksandSmallButton: GoogleFonts.quicksand(
          fontWeight: FontWeight.w700,
          fontStyle: FontStyle.normal,
          fontSize: 13,
          color: AppColorsData.regular().orangeShadesAlmostBlack,
        ),
        quicksandBodyTiny: GoogleFonts.quicksand(
          fontWeight: FontWeight.w400,
          fontSize: 9,
          color: AppColorsData.regular().orangeShadesAlmostBlack,
        ),
        sourceSansProBodyBold: GoogleFonts.sourceSansPro(
          fontWeight: FontWeight.w700,
          fontStyle: FontStyle.normal,
          fontSize: 20,
          color: AppColorsData.regular().orangeShadesAlmostBlack,
        ),
        sourceSansProBodySemibold: GoogleFonts.sourceSansPro(
          fontWeight: FontWeight.w600,
          fontStyle: FontStyle.normal,
          fontSize: 17,
          color: AppColorsData.regular().orangeShadesAlmostBlack,
        ),
        sourceSansProBody: GoogleFonts.sourceSansPro(
          fontWeight: FontWeight.w400,
          fontStyle: FontStyle.normal,
          fontSize: 17,
          color: AppColorsData.regular().orangeShadesAlmostBlack,
        ),
        sourceSansProBodySmall: GoogleFonts.sourceSansPro(
          fontWeight: FontWeight.w400,
          fontStyle: FontStyle.normal,
          fontSize: 15,
          color: AppColorsData.regular().orangeShadesAlmostBlack,
        ),
        sourceSansProBody1: GoogleFonts.sourceSansPro(
          fontWeight: FontWeight.w400,
          fontStyle: FontStyle.normal,
          fontSize: 11,
          color: AppColorsData.regular().orangeShadesAlmostBlack,
        ),
        lavina: GoogleFonts.yesevaOne(
          fontWeight: FontWeight.w400,
          fontStyle: FontStyle.normal,
          fontSize: 12,
          color: AppColorsData.regular().orangeShadesAlmostBlack,
        ),
      );

  factory AppTypographyData.orangeTints_8() => AppTypographyData(
        quicksandResultScore: GoogleFonts.quicksand(
          fontWeight: FontWeight.w600,
          fontStyle: FontStyle.normal,
          fontSize: 48,
          color: AppColorsData.regular().orangeTints_8,
        ),
        quicksandTitle: GoogleFonts.quicksand(
          fontWeight: FontWeight.w400,
          fontStyle: FontStyle.normal,
          fontSize: 48,
          color: AppColorsData.regular().orangeTints_8,
        ),
        quicksandTitle1: GoogleFonts.quicksand(
          fontWeight: FontWeight.w700,
          fontStyle: FontStyle.normal,
          fontSize: 28,
          color: AppColorsData.regular().orangeTints_8,
        ),
        quicksandTitle2: GoogleFonts.quicksand(
          fontWeight: FontWeight.w700,
          fontStyle: FontStyle.normal,
          fontSize: 24,
          color: AppColorsData.regular().orangeTints_8,
        ),
        quicksandBody: GoogleFonts.quicksand(
          fontWeight: FontWeight.w700,
          fontStyle: FontStyle.normal,
          fontSize: 17,
          color: AppColorsData.regular().orangeTints_8,
        ),
        quicksandBodySmall: GoogleFonts.quicksand(
          fontWeight: FontWeight.w700,
          fontStyle: FontStyle.normal,
          fontSize: 15,
          color: AppColorsData.regular().orangeTints_8,
        ),
        quicksandSmallButton: GoogleFonts.quicksand(
          fontWeight: FontWeight.w700,
          fontStyle: FontStyle.normal,
          fontSize: 13,
          color: AppColorsData.regular().orangeTints_8,
        ),
        quicksandBodyTiny: GoogleFonts.quicksand(
          fontWeight: FontWeight.w400,
          fontSize: 9,
          color: AppColorsData.regular().orangeTints_8,
        ),
        sourceSansProBodyBold: GoogleFonts.sourceSansPro(
          fontWeight: FontWeight.w700,
          fontStyle: FontStyle.normal,
          fontSize: 20,
          color: AppColorsData.regular().orangeTints_8,
        ),
        sourceSansProBodySemibold: GoogleFonts.sourceSansPro(
          fontWeight: FontWeight.w600,
          fontStyle: FontStyle.normal,
          fontSize: 17,
          color: AppColorsData.regular().orangeTints_8,
        ),
        sourceSansProBody: GoogleFonts.sourceSansPro(
          fontWeight: FontWeight.w400,
          fontStyle: FontStyle.normal,
          fontSize: 17,
          color: AppColorsData.regular().orangeTints_8,
        ),
        sourceSansProBodySmall: GoogleFonts.sourceSansPro(
          fontWeight: FontWeight.w400,
          fontStyle: FontStyle.normal,
          fontSize: 15,
          color: AppColorsData.regular().orangeTints_8,
        ),
        sourceSansProBody1: GoogleFonts.sourceSansPro(
          fontWeight: FontWeight.w400,
          fontStyle: FontStyle.normal,
          fontSize: 11,
          color: AppColorsData.regular().orangeTints_8,
        ),
        lavina: GoogleFonts.yesevaOne(
          fontWeight: FontWeight.w400,
          fontStyle: FontStyle.normal,
          fontSize: 12,
          color: AppColorsData.regular().orangeTints_8,
        ),
      );

  factory AppTypographyData.orangeTints_7() => AppTypographyData(
        quicksandResultScore: GoogleFonts.quicksand(
          fontWeight: FontWeight.w600,
          fontStyle: FontStyle.normal,
          fontSize: 48,
          color: AppColorsData.regular().orangeTints_7,
        ),
        quicksandTitle: GoogleFonts.quicksand(
          fontWeight: FontWeight.w400,
          fontStyle: FontStyle.normal,
          fontSize: 48,
          color: AppColorsData.regular().orangeTints_7,
        ),
        quicksandTitle1: GoogleFonts.quicksand(
          fontWeight: FontWeight.w700,
          fontStyle: FontStyle.normal,
          fontSize: 28,
          color: AppColorsData.regular().orangeTints_7,
        ),
        quicksandTitle2: GoogleFonts.quicksand(
          fontWeight: FontWeight.w700,
          fontStyle: FontStyle.normal,
          fontSize: 24,
          color: AppColorsData.regular().orangeTints_7,
        ),
        quicksandBody: GoogleFonts.quicksand(
          fontWeight: FontWeight.w700,
          fontStyle: FontStyle.normal,
          fontSize: 17,
          color: AppColorsData.regular().orangeTints_7,
        ),
        quicksandBodySmall: GoogleFonts.quicksand(
          fontWeight: FontWeight.w700,
          fontStyle: FontStyle.normal,
          fontSize: 15,
          color: AppColorsData.regular().orangeTints_7,
        ),
        quicksandSmallButton: GoogleFonts.quicksand(
          fontWeight: FontWeight.w700,
          fontStyle: FontStyle.normal,
          fontSize: 13,
          color: AppColorsData.regular().orangeTints_7,
        ),
        quicksandBodyTiny: GoogleFonts.quicksand(
          fontWeight: FontWeight.w400,
          fontSize: 9,
          color: AppColorsData.regular().orangeTints_7,
        ),
        sourceSansProBodyBold: GoogleFonts.sourceSansPro(
          fontWeight: FontWeight.w700,
          fontStyle: FontStyle.normal,
          fontSize: 20,
          color: AppColorsData.regular().orangeTints_7,
        ),
        sourceSansProBodySemibold: GoogleFonts.sourceSansPro(
          fontWeight: FontWeight.w600,
          fontStyle: FontStyle.normal,
          fontSize: 17,
          color: AppColorsData.regular().orangeTints_7,
        ),
        sourceSansProBody: GoogleFonts.sourceSansPro(
          fontWeight: FontWeight.w400,
          fontStyle: FontStyle.normal,
          fontSize: 17,
          color: AppColorsData.regular().orangeTints_7,
        ),
        sourceSansProBodySmall: GoogleFonts.sourceSansPro(
          fontWeight: FontWeight.w400,
          fontStyle: FontStyle.normal,
          fontSize: 15,
          color: AppColorsData.regular().orangeTints_7,
        ),
        sourceSansProBody1: GoogleFonts.sourceSansPro(
          fontWeight: FontWeight.w400,
          fontStyle: FontStyle.normal,
          fontSize: 11,
          color: AppColorsData.regular().orangeTints_7,
        ),
        lavina: GoogleFonts.yesevaOne(
          fontWeight: FontWeight.w400,
          fontStyle: FontStyle.normal,
          fontSize: 12,
          color: AppColorsData.regular().orangeTints_7,
        ),
      );

  factory AppTypographyData.orangeTints_6() => AppTypographyData(
        quicksandResultScore: GoogleFonts.quicksand(
          fontWeight: FontWeight.w600,
          fontStyle: FontStyle.normal,
          fontSize: 48,
          color: AppColorsData.regular().orangeTints_6,
        ),
        quicksandTitle: GoogleFonts.quicksand(
          fontWeight: FontWeight.w400,
          fontStyle: FontStyle.normal,
          fontSize: 48,
          color: AppColorsData.regular().orangeTints_6,
        ),
        quicksandTitle1: GoogleFonts.quicksand(
          fontWeight: FontWeight.w700,
          fontStyle: FontStyle.normal,
          fontSize: 28,
          color: AppColorsData.regular().orangeTints_6,
        ),
        quicksandTitle2: GoogleFonts.quicksand(
          fontWeight: FontWeight.w700,
          fontStyle: FontStyle.normal,
          fontSize: 24,
          color: AppColorsData.regular().orangeTints_6,
        ),
        quicksandBody: GoogleFonts.quicksand(
          fontWeight: FontWeight.w700,
          fontStyle: FontStyle.normal,
          fontSize: 17,
          color: AppColorsData.regular().orangeTints_6,
        ),
        quicksandBodySmall: GoogleFonts.quicksand(
          fontWeight: FontWeight.w700,
          fontStyle: FontStyle.normal,
          fontSize: 15,
          color: AppColorsData.regular().orangeTints_6,
        ),
        quicksandSmallButton: GoogleFonts.quicksand(
          fontWeight: FontWeight.w700,
          fontStyle: FontStyle.normal,
          fontSize: 13,
          color: AppColorsData.regular().orangeTints_6,
        ),
        quicksandBodyTiny: GoogleFonts.quicksand(
          fontWeight: FontWeight.w400,
          fontSize: 9,
          color: AppColorsData.regular().orangeTints_6,
        ),
        sourceSansProBodyBold: GoogleFonts.sourceSansPro(
          fontWeight: FontWeight.w700,
          fontStyle: FontStyle.normal,
          fontSize: 20,
          color: AppColorsData.regular().orangeTints_6,
        ),
        sourceSansProBodySemibold: GoogleFonts.sourceSansPro(
          fontWeight: FontWeight.w600,
          fontStyle: FontStyle.normal,
          fontSize: 17,
          color: AppColorsData.regular().orangeTints_6,
        ),
        sourceSansProBody: GoogleFonts.sourceSansPro(
          fontWeight: FontWeight.w400,
          fontStyle: FontStyle.normal,
          fontSize: 17,
          color: AppColorsData.regular().orangeTints_6,
        ),
        sourceSansProBodySmall: GoogleFonts.sourceSansPro(
          fontWeight: FontWeight.w400,
          fontStyle: FontStyle.normal,
          fontSize: 15,
          color: AppColorsData.regular().orangeTints_6,
        ),
        sourceSansProBody1: GoogleFonts.sourceSansPro(
          fontWeight: FontWeight.w400,
          fontStyle: FontStyle.normal,
          fontSize: 11,
          color: AppColorsData.regular().orangeTints_6,
        ),
        lavina: GoogleFonts.yesevaOne(
          fontWeight: FontWeight.w400,
          fontStyle: FontStyle.normal,
          fontSize: 12,
          color: AppColorsData.regular().orangeTints_6,
        ),
      );

  factory AppTypographyData.orangeTints_5() => AppTypographyData(
        quicksandResultScore: GoogleFonts.quicksand(
          fontWeight: FontWeight.w600,
          fontStyle: FontStyle.normal,
          fontSize: 48,
          color: AppColorsData.regular().orangeTints_5,
        ),
        quicksandTitle: GoogleFonts.quicksand(
          fontWeight: FontWeight.w400,
          fontStyle: FontStyle.normal,
          fontSize: 48,
          color: AppColorsData.regular().orangeTints_5,
        ),
        quicksandTitle1: GoogleFonts.quicksand(
          fontWeight: FontWeight.w700,
          fontStyle: FontStyle.normal,
          fontSize: 28,
          color: AppColorsData.regular().orangeTints_5,
        ),
        quicksandTitle2: GoogleFonts.quicksand(
          fontWeight: FontWeight.w700,
          fontStyle: FontStyle.normal,
          fontSize: 24,
          color: AppColorsData.regular().orangeTints_5,
        ),
        quicksandBody: GoogleFonts.quicksand(
          fontWeight: FontWeight.w700,
          fontStyle: FontStyle.normal,
          fontSize: 17,
          color: AppColorsData.regular().orangeTints_5,
        ),
        quicksandBodySmall: GoogleFonts.quicksand(
          fontWeight: FontWeight.w700,
          fontStyle: FontStyle.normal,
          fontSize: 15,
          color: AppColorsData.regular().orangeTints_5,
        ),
        quicksandSmallButton: GoogleFonts.quicksand(
          fontWeight: FontWeight.w700,
          fontStyle: FontStyle.normal,
          fontSize: 13,
          color: AppColorsData.regular().orangeTints_5,
        ),
        quicksandBodyTiny: GoogleFonts.quicksand(
          fontWeight: FontWeight.w400,
          fontSize: 9,
          color: AppColorsData.regular().orangeTints_5,
        ),
        sourceSansProBodyBold: GoogleFonts.sourceSansPro(
          fontWeight: FontWeight.w700,
          fontStyle: FontStyle.normal,
          fontSize: 20,
          color: AppColorsData.regular().orangeTints_5,
        ),
        sourceSansProBodySemibold: GoogleFonts.sourceSansPro(
          fontWeight: FontWeight.w600,
          fontStyle: FontStyle.normal,
          fontSize: 17,
          color: AppColorsData.regular().orangeTints_5,
        ),
        sourceSansProBody: GoogleFonts.sourceSansPro(
          fontWeight: FontWeight.w400,
          fontStyle: FontStyle.normal,
          fontSize: 17,
          color: AppColorsData.regular().orangeTints_5,
        ),
        sourceSansProBodySmall: GoogleFonts.sourceSansPro(
          fontWeight: FontWeight.w400,
          fontStyle: FontStyle.normal,
          fontSize: 15,
          color: AppColorsData.regular().orangeTints_5,
        ),
        sourceSansProBody1: GoogleFonts.sourceSansPro(
          fontWeight: FontWeight.w400,
          fontStyle: FontStyle.normal,
          fontSize: 11,
          color: AppColorsData.regular().orangeTints_5,
        ),
        lavina: GoogleFonts.yesevaOne(
          fontWeight: FontWeight.w400,
          fontStyle: FontStyle.normal,
          fontSize: 12,
          color: AppColorsData.regular().orangeTints_5,
        ),
      );

  factory AppTypographyData.orangeTints_4() => AppTypographyData(
        quicksandResultScore: GoogleFonts.quicksand(
          fontWeight: FontWeight.w600,
          fontStyle: FontStyle.normal,
          fontSize: 48,
          color: AppColorsData.regular().orangeTints_4,
        ),
        quicksandTitle: GoogleFonts.quicksand(
          fontWeight: FontWeight.w400,
          fontStyle: FontStyle.normal,
          fontSize: 48,
          color: AppColorsData.regular().orangeTints_4,
        ),
        quicksandTitle1: GoogleFonts.quicksand(
          fontWeight: FontWeight.w700,
          fontStyle: FontStyle.normal,
          fontSize: 28,
          color: AppColorsData.regular().orangeTints_4,
        ),
        quicksandTitle2: GoogleFonts.quicksand(
          fontWeight: FontWeight.w700,
          fontStyle: FontStyle.normal,
          fontSize: 24,
          color: AppColorsData.regular().orangeTints_4,
        ),
        quicksandBody: GoogleFonts.quicksand(
          fontWeight: FontWeight.w700,
          fontStyle: FontStyle.normal,
          fontSize: 17,
          color: AppColorsData.regular().orangeTints_4,
        ),
        quicksandBodySmall: GoogleFonts.quicksand(
          fontWeight: FontWeight.w700,
          fontStyle: FontStyle.normal,
          fontSize: 15,
          color: AppColorsData.regular().orangeTints_4,
        ),
        quicksandSmallButton: GoogleFonts.quicksand(
          fontWeight: FontWeight.w700,
          fontStyle: FontStyle.normal,
          fontSize: 13,
          color: AppColorsData.regular().orangeTints_4,
        ),
        quicksandBodyTiny: GoogleFonts.quicksand(
          fontWeight: FontWeight.w400,
          fontSize: 9,
          color: AppColorsData.regular().orangeTints_4,
        ),
        sourceSansProBodyBold: GoogleFonts.sourceSansPro(
          fontWeight: FontWeight.w700,
          fontStyle: FontStyle.normal,
          fontSize: 20,
          color: AppColorsData.regular().orangeTints_4,
        ),
        sourceSansProBodySemibold: GoogleFonts.sourceSansPro(
          fontWeight: FontWeight.w600,
          fontStyle: FontStyle.normal,
          fontSize: 17,
          color: AppColorsData.regular().orangeTints_4,
        ),
        sourceSansProBody: GoogleFonts.sourceSansPro(
          fontWeight: FontWeight.w400,
          fontStyle: FontStyle.normal,
          fontSize: 17,
          color: AppColorsData.regular().orangeTints_4,
        ),
        sourceSansProBodySmall: GoogleFonts.sourceSansPro(
          fontWeight: FontWeight.w400,
          fontStyle: FontStyle.normal,
          fontSize: 15,
          color: AppColorsData.regular().orangeTints_4,
        ),
        sourceSansProBody1: GoogleFonts.sourceSansPro(
          fontWeight: FontWeight.w400,
          fontStyle: FontStyle.normal,
          fontSize: 11,
          color: AppColorsData.regular().orangeTints_4,
        ),
        lavina: GoogleFonts.yesevaOne(
          fontWeight: FontWeight.w400,
          fontStyle: FontStyle.normal,
          fontSize: 12,
          color: AppColorsData.regular().orangeTints_4,
        ),
      );

  factory AppTypographyData.orangeTints_3() => AppTypographyData(
        quicksandResultScore: GoogleFonts.quicksand(
          fontWeight: FontWeight.w600,
          fontStyle: FontStyle.normal,
          fontSize: 48,
          color: AppColorsData.regular().orangeTints_3,
        ),
        quicksandTitle: GoogleFonts.quicksand(
          fontWeight: FontWeight.w400,
          fontStyle: FontStyle.normal,
          fontSize: 48,
          color: AppColorsData.regular().orangeTints_3,
        ),
        quicksandTitle1: GoogleFonts.quicksand(
          fontWeight: FontWeight.w700,
          fontStyle: FontStyle.normal,
          fontSize: 28,
          color: AppColorsData.regular().orangeTints_3,
        ),
        quicksandTitle2: GoogleFonts.quicksand(
          fontWeight: FontWeight.w700,
          fontStyle: FontStyle.normal,
          fontSize: 24,
          color: AppColorsData.regular().orangeTints_3,
        ),
        quicksandBody: GoogleFonts.quicksand(
          fontWeight: FontWeight.w700,
          fontStyle: FontStyle.normal,
          fontSize: 17,
          color: AppColorsData.regular().orangeTints_3,
        ),
        quicksandBodySmall: GoogleFonts.quicksand(
          fontWeight: FontWeight.w700,
          fontStyle: FontStyle.normal,
          fontSize: 15,
          color: AppColorsData.regular().orangeTints_3,
        ),
        quicksandSmallButton: GoogleFonts.quicksand(
          fontWeight: FontWeight.w700,
          fontStyle: FontStyle.normal,
          fontSize: 13,
          color: AppColorsData.regular().orangeTints_3,
        ),
        quicksandBodyTiny: GoogleFonts.quicksand(
          fontWeight: FontWeight.w400,
          fontSize: 9,
          color: AppColorsData.regular().orangeTints_3,
        ),
        sourceSansProBodyBold: GoogleFonts.sourceSansPro(
          fontWeight: FontWeight.w700,
          fontStyle: FontStyle.normal,
          fontSize: 20,
          color: AppColorsData.regular().orangeTints_3,
        ),
        sourceSansProBodySemibold: GoogleFonts.sourceSansPro(
          fontWeight: FontWeight.w600,
          fontStyle: FontStyle.normal,
          fontSize: 17,
          color: AppColorsData.regular().orangeTints_3,
        ),
        sourceSansProBody: GoogleFonts.sourceSansPro(
          fontWeight: FontWeight.w400,
          fontStyle: FontStyle.normal,
          fontSize: 17,
          color: AppColorsData.regular().orangeTints_3,
        ),
        sourceSansProBodySmall: GoogleFonts.sourceSansPro(
          fontWeight: FontWeight.w400,
          fontStyle: FontStyle.normal,
          fontSize: 15,
          color: AppColorsData.regular().orangeTints_3,
        ),
        sourceSansProBody1: GoogleFonts.sourceSansPro(
          fontWeight: FontWeight.w400,
          fontStyle: FontStyle.normal,
          fontSize: 11,
          color: AppColorsData.regular().orangeTints_3,
        ),
        lavina: GoogleFonts.yesevaOne(
          fontWeight: FontWeight.w400,
          fontStyle: FontStyle.normal,
          fontSize: 12,
          color: AppColorsData.regular().orangeTints_3,
        ),
      );

  factory AppTypographyData.orangeTints_2() => AppTypographyData(
        quicksandResultScore: GoogleFonts.quicksand(
          fontWeight: FontWeight.w600,
          fontStyle: FontStyle.normal,
          fontSize: 48,
          color: AppColorsData.regular().orangeTints_2,
        ),
        quicksandTitle: GoogleFonts.quicksand(
          fontWeight: FontWeight.w400,
          fontStyle: FontStyle.normal,
          fontSize: 48,
          color: AppColorsData.regular().orangeTints_2,
        ),
        quicksandTitle1: GoogleFonts.quicksand(
          fontWeight: FontWeight.w700,
          fontStyle: FontStyle.normal,
          fontSize: 28,
          color: AppColorsData.regular().orangeTints_2,
        ),
        quicksandTitle2: GoogleFonts.quicksand(
          fontWeight: FontWeight.w700,
          fontStyle: FontStyle.normal,
          fontSize: 24,
          color: AppColorsData.regular().orangeTints_2,
        ),
        quicksandBody: GoogleFonts.quicksand(
          fontWeight: FontWeight.w700,
          fontStyle: FontStyle.normal,
          fontSize: 17,
          color: AppColorsData.regular().orangeTints_2,
        ),
        quicksandBodySmall: GoogleFonts.quicksand(
          fontWeight: FontWeight.w700,
          fontStyle: FontStyle.normal,
          fontSize: 15,
          color: AppColorsData.regular().orangeTints_2,
        ),
        quicksandSmallButton: GoogleFonts.quicksand(
          fontWeight: FontWeight.w700,
          fontStyle: FontStyle.normal,
          fontSize: 13,
          color: AppColorsData.regular().orangeTints_2,
        ),
        quicksandBodyTiny: GoogleFonts.quicksand(
          fontWeight: FontWeight.w400,
          fontSize: 9,
          color: AppColorsData.regular().orangeTints_2,
        ),
        sourceSansProBodyBold: GoogleFonts.sourceSansPro(
          fontWeight: FontWeight.w700,
          fontStyle: FontStyle.normal,
          fontSize: 20,
          color: AppColorsData.regular().orangeTints_2,
        ),
        sourceSansProBodySemibold: GoogleFonts.sourceSansPro(
          fontWeight: FontWeight.w600,
          fontStyle: FontStyle.normal,
          fontSize: 17,
          color: AppColorsData.regular().orangeTints_2,
        ),
        sourceSansProBody: GoogleFonts.sourceSansPro(
          fontWeight: FontWeight.w400,
          fontStyle: FontStyle.normal,
          fontSize: 17,
          color: AppColorsData.regular().orangeTints_2,
        ),
        sourceSansProBodySmall: GoogleFonts.sourceSansPro(
          fontWeight: FontWeight.w400,
          fontStyle: FontStyle.normal,
          fontSize: 15,
          color: AppColorsData.regular().orangeTints_2,
        ),
        sourceSansProBody1: GoogleFonts.sourceSansPro(
          fontWeight: FontWeight.w400,
          fontStyle: FontStyle.normal,
          fontSize: 11,
          color: AppColorsData.regular().orangeTints_2,
        ),
        lavina: GoogleFonts.yesevaOne(
          fontWeight: FontWeight.w400,
          fontStyle: FontStyle.normal,
          fontSize: 12,
          color: AppColorsData.regular().orangeTints_2,
        ),
      );

  factory AppTypographyData.primaryWhite() => AppTypographyData(
        quicksandResultScore: GoogleFonts.quicksand(
          fontWeight: FontWeight.w600,
          fontStyle: FontStyle.normal,
          fontSize: 48,
          color: AppColorsData.regular().primaryWhite,
        ),
        quicksandTitle: GoogleFonts.quicksand(
          fontWeight: FontWeight.w400,
          fontStyle: FontStyle.normal,
          fontSize: 48,
          color: AppColorsData.regular().primaryWhite,
        ),
        quicksandTitle1: GoogleFonts.quicksand(
          fontWeight: FontWeight.w700,
          fontStyle: FontStyle.normal,
          fontSize: 28,
          color: AppColorsData.regular().primaryWhite,
        ),
        quicksandTitle2: GoogleFonts.quicksand(
          fontWeight: FontWeight.w700,
          fontStyle: FontStyle.normal,
          fontSize: 24,
          color: AppColorsData.regular().primaryWhite,
        ),
        quicksandBody: GoogleFonts.quicksand(
          fontWeight: FontWeight.w700,
          fontStyle: FontStyle.normal,
          fontSize: 17,
          color: AppColorsData.regular().primaryWhite,
        ),
        quicksandBodySmall: GoogleFonts.quicksand(
          fontWeight: FontWeight.w700,
          fontStyle: FontStyle.normal,
          fontSize: 15,
          color: AppColorsData.regular().primaryWhite,
        ),
        quicksandSmallButton: GoogleFonts.quicksand(
          fontWeight: FontWeight.w700,
          fontStyle: FontStyle.normal,
          fontSize: 13,
          color: AppColorsData.regular().primaryWhite,
        ),
        quicksandBodyTiny: GoogleFonts.quicksand(
          fontWeight: FontWeight.w400,
          fontSize: 9,
          color: AppColorsData.regular().primaryWhite,
        ),
        sourceSansProBodyBold: GoogleFonts.sourceSansPro(
          fontWeight: FontWeight.w700,
          fontStyle: FontStyle.normal,
          fontSize: 20,
          color: AppColorsData.regular().primaryWhite,
        ),
        sourceSansProBodySemibold: GoogleFonts.sourceSansPro(
          fontWeight: FontWeight.w600,
          fontStyle: FontStyle.normal,
          fontSize: 17,
          color: AppColorsData.regular().primaryWhite,
        ),
        sourceSansProBody: GoogleFonts.sourceSansPro(
          fontWeight: FontWeight.w400,
          fontStyle: FontStyle.normal,
          fontSize: 17,
          color: AppColorsData.regular().primaryWhite,
        ),
        sourceSansProBodySmall: GoogleFonts.sourceSansPro(
          fontWeight: FontWeight.w400,
          fontStyle: FontStyle.normal,
          fontSize: 15,
          color: AppColorsData.regular().primaryWhite,
        ),
        sourceSansProBody1: GoogleFonts.sourceSansPro(
          fontWeight: FontWeight.w400,
          fontStyle: FontStyle.normal,
          fontSize: 11,
          color: AppColorsData.regular().primaryWhite,
        ),
        lavina: GoogleFonts.yesevaOne(
          fontWeight: FontWeight.w400,
          fontStyle: FontStyle.normal,
          fontSize: 12,
          color: AppColorsData.regular().primaryWhite,
        ),
      );

  factory AppTypographyData.primaryUnavaliableGrey() => AppTypographyData(
        quicksandResultScore: GoogleFonts.quicksand(
          fontWeight: FontWeight.w600,
          fontStyle: FontStyle.normal,
          fontSize: 48,
          color: AppColorsData.regular().primaryUnavaliableGrey,
        ),
        quicksandTitle: GoogleFonts.quicksand(
          fontWeight: FontWeight.w400,
          fontStyle: FontStyle.normal,
          fontSize: 48,
          color: AppColorsData.regular().primaryUnavaliableGrey,
        ),
        quicksandTitle1: GoogleFonts.quicksand(
          fontWeight: FontWeight.w700,
          fontStyle: FontStyle.normal,
          fontSize: 28,
          color: AppColorsData.regular().primaryUnavaliableGrey,
        ),
        quicksandTitle2: GoogleFonts.quicksand(
          fontWeight: FontWeight.w700,
          fontStyle: FontStyle.normal,
          fontSize: 24,
          color: AppColorsData.regular().primaryUnavaliableGrey,
        ),
        quicksandBody: GoogleFonts.quicksand(
          fontWeight: FontWeight.w700,
          fontStyle: FontStyle.normal,
          fontSize: 17,
          color: AppColorsData.regular().primaryUnavaliableGrey,
        ),
        quicksandBodySmall: GoogleFonts.quicksand(
          fontWeight: FontWeight.w700,
          fontStyle: FontStyle.normal,
          fontSize: 15,
          color: AppColorsData.regular().primaryUnavaliableGrey,
        ),
        quicksandSmallButton: GoogleFonts.quicksand(
          fontWeight: FontWeight.w700,
          fontStyle: FontStyle.normal,
          fontSize: 13,
          color: AppColorsData.regular().primaryUnavaliableGrey,
        ),
        quicksandBodyTiny: GoogleFonts.quicksand(
          fontWeight: FontWeight.w400,
          fontSize: 9,
          color: AppColorsData.regular().primaryUnavaliableGrey,
        ),
        sourceSansProBodyBold: GoogleFonts.sourceSansPro(
          fontWeight: FontWeight.w700,
          fontStyle: FontStyle.normal,
          fontSize: 20,
          color: AppColorsData.regular().primaryUnavaliableGrey,
        ),
        sourceSansProBodySemibold: GoogleFonts.sourceSansPro(
          fontWeight: FontWeight.w600,
          fontStyle: FontStyle.normal,
          fontSize: 17,
          color: AppColorsData.regular().primaryUnavaliableGrey,
        ),
        sourceSansProBody: GoogleFonts.sourceSansPro(
          fontWeight: FontWeight.w400,
          fontStyle: FontStyle.normal,
          fontSize: 17,
          color: AppColorsData.regular().primaryUnavaliableGrey,
        ),
        sourceSansProBodySmall: GoogleFonts.sourceSansPro(
          fontWeight: FontWeight.w400,
          fontStyle: FontStyle.normal,
          fontSize: 15,
          color: AppColorsData.regular().primaryUnavaliableGrey,
        ),
        sourceSansProBody1: GoogleFonts.sourceSansPro(
          fontWeight: FontWeight.w400,
          fontStyle: FontStyle.normal,
          fontSize: 11,
          color: AppColorsData.regular().primaryUnavaliableGrey,
        ),
        lavina: GoogleFonts.yesevaOne(
          fontWeight: FontWeight.w400,
          fontStyle: FontStyle.normal,
          fontSize: 12,
          color: AppColorsData.regular().primaryUnavaliableGrey,
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
