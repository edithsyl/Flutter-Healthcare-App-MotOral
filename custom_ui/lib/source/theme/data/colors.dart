// ignore_for_file: unnecessary_const
import 'package:custom_ui/source/utils/named.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/rendering.dart';

class AppColorsData extends Equatable {
  const AppColorsData({
    required this.cheeck,
    required this.primaryHighlightRed,
    required this.primaryHighlightBlue,
    required this.mouth,
    required this.primaryTrueBlack,
    required this.primaryOrange,
    required this.primaryWhite,
    required this.primaryUnavaliableGrey,
    required this.orangeTints_2,
    required this.orangeTints_4,
    required this.orangeTints_5,
    required this.orangeTints_6,
    required this.orangeTints_3,
    required this.orangeTints_7,
    required this.orangeTints_8,
    required this.orangeShadesDarkerOrange,
    required this.orangeShadesLighterBrown,
    required this.orangeShadesReddishOrange,
    required this.orangeShadesLightBrown,
    required this.orangeShadesBrown,
    required this.orangeShadesDarkBrown,
    required this.orangeShadesAlmostBlack,
    required this.orangeComplementaryBlue,
    required this.orangeSplitComplementaryBlueHighlight,
    required this.orangeSplitComplementaryDarkBlue,
    required this.orangeAnalogousYellow,
    required this.orangeAnalogousGreen,
    required this.orangeTriadPurple,
    required this.orangeTriadMint,
    required this.orangeRectangleGreen,
    required this.orangeRectangleGreenTint_3,
    required this.orangeRectangleGreenTint_2,
    required this.orangeSquarePinkPurple,
    required this.orangeSquareGreen,
    required this.greyTints_2,
    required this.greyTints_3,
    required this.greyTints_4,
    required this.greyShades_2,
    required this.greyShades_3,
    required this.greyShades_4,
    required this.greyShades_5,
    required this.greyShades_6,
    required this.blueHighlightTint_1,
    required this.blueHighlightTint_2,
    required this.blueHighlightTint_3,
    required this.blueHighlightTint_4,
    required this.blueHighlightTint_5,
  });

  factory AppColorsData.regular() => const AppColorsData(
        cheeck: Color(0xff4548ff),
        primaryHighlightRed: Color(0xfff35d38),
        primaryHighlightBlue: Color(0xff00c2ff),
        mouth: Color(0xfff65fa6),
        primaryTrueBlack: Color(0xff000000),
        primaryOrange: Color(0xffff9f45),
        primaryWhite: Color(0xffffffff),
        primaryUnavaliableGrey: Color(0xffc5c5c5),
        orangeTints_2: Color(0xffffab5c),
        orangeTints_4: Color(0xffffc38b),
        orangeTints_5: Color(0xffffcfa2),
        orangeTints_6: Color(0xffffdbb9),
        orangeTints_3: Color(0xffffb773),
        orangeTints_7: Color(0xffffe7d1),
        orangeTints_8: Color(0xfffff3e8),
        orangeShadesDarkerOrange: Color(0xffff8a1d),
        orangeShadesLighterBrown: Color(0xffa24e00),
        orangeShadesReddishOrange: Color(0xfff37600),
        orangeShadesLightBrown: Color(0xffcb6200),
        orangeShadesBrown: Color(0xff7a3b00),
        orangeShadesDarkBrown: Color(0xff512700),
        orangeShadesAlmostBlack: Color(0xff281400),
        orangeComplementaryBlue: Color(0xff45a5ff),
        orangeSplitComplementaryBlueHighlight: Color(0xff45fffc),
        orangeSplitComplementaryDarkBlue: Color(0xff4548ff),
        orangeAnalogousYellow: Color(0xfffffc45),
        orangeAnalogousGreen: Color(0xffa5ff45),
        orangeTriadPurple: Color(0xff9f45ff),
        orangeTriadMint: Color(0xff45ff9f),
        orangeRectangleGreen: Color(0xffa5ff45),
        orangeRectangleGreenTint_3: Color(0xfff6ffec),
        orangeRectangleGreenTint_2: Color(0xffd4ffa6),
        orangeSquarePinkPurple: Color(0xfffc45ff),
        orangeSquareGreen: Color(0xff48ff45),
        greyTints_2: Color(0xffd4d4d4),
        greyTints_3: Color(0xffe2e2e2),
        greyTints_4: Color(0xfff1f1f1),
        greyShades_2: Color(0xffafafaf),
        greyShades_3: Color(0xff999999),
        greyShades_4: Color(0xff838383),
        greyShades_5: Color(0xff6d6d6d),
        greyShades_6: Color(0xff585858),
        blueHighlightTint_1: Color(0xff45fffc),
        blueHighlightTint_2: Color(0xff6afffd),
        blueHighlightTint_3: Color(0xff8ffffd),
        blueHighlightTint_4: Color(0xffb5fffe),
        blueHighlightTint_5: Color(0xffdafffe),
      );

  // factory AppColorsData.dark() => const AppColorsData();

  final Color cheeck;
  final Color primaryHighlightRed;
  final Color primaryHighlightBlue;
  final Color mouth;
  final Color primaryTrueBlack;
  final Color primaryOrange;
  final Color primaryWhite;
  final Color primaryUnavaliableGrey;

  final Color orangeTints_2;
  final Color orangeTints_4;
  final Color orangeTints_5;
  final Color orangeTints_6;
  final Color orangeTints_3;
  final Color orangeTints_7;
  final Color orangeTints_8;

  final Color orangeShadesDarkerOrange;
  final Color orangeShadesLighterBrown;
  final Color orangeShadesReddishOrange;
  final Color orangeShadesLightBrown;
  final Color orangeShadesBrown;
  final Color orangeShadesDarkBrown;
  final Color orangeShadesAlmostBlack;

  final Color orangeComplementaryBlue;
  final Color orangeSplitComplementaryBlueHighlight;
  final Color orangeSplitComplementaryDarkBlue;

  final Color orangeAnalogousYellow;
  final Color orangeAnalogousGreen;

  final Color orangeTriadPurple;
  final Color orangeTriadMint;

  final Color orangeRectangleGreen;
  final Color orangeRectangleGreenTint_3;
  final Color orangeRectangleGreenTint_2;
  final Color orangeSquarePinkPurple;
  final Color orangeSquareGreen;

  final Color greyTints_2;
  final Color greyTints_3;
  final Color greyTints_4;
  final Color greyShades_2;
  final Color greyShades_3;
  final Color greyShades_4;
  final Color greyShades_5;
  final Color greyShades_6;

  final Color blueHighlightTint_1;
  final Color blueHighlightTint_2;
  final Color blueHighlightTint_3;
  final Color blueHighlightTint_4;
  final Color blueHighlightTint_5;

  @override
  List<Object?> get props => [
        cheeck.named('cheeck'),
        primaryHighlightRed.named('primaryHighlightRed'),
        primaryHighlightBlue.named('primaryHighlightBlue'),
        mouth.named('mouth'),
        primaryTrueBlack.named('primaryTrueBlack'),
        primaryOrange.named('primaryOrange'),
        primaryWhite.named('primaryWhite'),
        primaryUnavaliableGrey.named('primaryUnavaliableGrey'),
        orangeTints_2.named('orangeTints_2'),
        orangeTints_4.named('orangeTints_4'),
        orangeTints_5.named('orangeTints_5'),
        orangeTints_6.named('orangeTints_6'),
        orangeTints_3.named('orangeTints_3'),
        orangeTints_7.named('orangeTints_7'),
        orangeTints_8.named('orangeTints_8'),
        orangeShadesDarkerOrange.named('orangeShadesDarkerOrange'),
        orangeShadesLighterBrown.named('orangeShadesLighterBrown'),
        orangeShadesReddishOrange.named('orangeShadesReddishOrange'),
        orangeShadesLightBrown.named('orangeShadesLightBrown'),
        orangeShadesBrown.named('orangeShadesBrown'),
        orangeShadesDarkBrown.named('orangeShadesDarkBrown'),
        orangeShadesAlmostBlack.named('orangeShadesAlmostBlack'),
        orangeComplementaryBlue.named('orangeComplementaryBlue'),
        orangeSplitComplementaryBlueHighlight
            .named('orangeSplitComplementaryBlueHighlight'),
        orangeSplitComplementaryDarkBlue
            .named('orangeSplitComplementaryDarkBlue'),
        orangeAnalogousYellow.named('orangeAnalogousYellow'),
        orangeAnalogousGreen.named('orangeAnalogousGreen'),
        orangeTriadPurple.named('orangeTriadPurple'),
        orangeTriadMint.named('orangeTriadMint'),
        orangeRectangleGreen.named('orangeRectangleGreen'),
        orangeRectangleGreenTint_3.named('orangeRectangleGreenTint_3'),
        orangeRectangleGreenTint_2.named('orangeRectangleGreenTint_2'),
        orangeSquarePinkPurple.named('orangeSquarePinkPurple'),
        orangeSquareGreen.named('orangeSquareGreen'),
        greyTints_2.named('greyTints_2'),
        greyTints_3.named('greyTints_3'),
        greyTints_4.named('greyTints_4'),
        greyShades_2.named('greyShades_2'),
        greyShades_3.named('greyShades_3'),
        greyShades_4.named('greyShades_4'),
        greyShades_5.named('greyShades_5'),
        greyShades_6.named('greyShades_6'),
        blueHighlightTint_1.named('blueHighlightTint_1'),
        blueHighlightTint_2.named('blueHighlightTint_2'),
        blueHighlightTint_3.named('blueHighlightTint_3'),
        blueHighlightTint_4.named('blueHighlightTint_4'),
        blueHighlightTint_5.named('blueHighlightTint_5'),
      ];
}
