import 'package:custom_ui/source/utils/named.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/rendering.dart';

class AppRadiusData extends Equatable {
  const AppRadiusData({
    required this.small,
    required this.regular,
    required this.round,
  });

  const AppRadiusData.regular()
      : small = const Radius.circular(8),
        regular = const Radius.circular(16),
        round = const Radius.circular(40);

  final Radius small;
  final Radius regular;
  final Radius round;

  AppBorderRadiusData asBorderRadius() => AppBorderRadiusData(this);

  @override
  List<Object?> get props => [
        small.named('small'),
        regular.named('regular'),
        round.named('round'),
      ];
}

class AppBorderRadiusData extends Equatable {
  const AppBorderRadiusData(this._radius);

  BorderRadius get allSmall => BorderRadius.all(_radius.small);
  BorderRadius get allRegular => BorderRadius.all(_radius.regular);
  BorderRadius get allRound => BorderRadius.all(_radius.round);

  BorderRadius get verticalSmall => BorderRadius.vertical(
        top: _radius.small,
      );
  BorderRadius get verticalRegular => BorderRadius.vertical(
        top: _radius.regular,
      );
  BorderRadius get verticalRound => BorderRadius.vertical(
        top: _radius.round,
      );

  final AppRadiusData _radius;

  @override
  List<Object?> get props => [_radius];
}
