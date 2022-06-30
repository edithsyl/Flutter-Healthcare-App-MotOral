import 'package:custom_ui/source/utils/named.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/rendering.dart';

class AppSpacingData extends Equatable {
  const AppSpacingData({
    required this.x0_25,
    required this.x0_5,
    required this.x1,
    required this.x1_5,
    required this.x2,
    required this.x3,
    required this.x4,
    required this.x5,
  });

  factory AppSpacingData.regular() => const AppSpacingData(
        x0_25: 2,
        x0_5: 4,
        x1: 8,
        x1_5: 12,
        x2: 16,
        x3: 24,
        x4: 32,
        x5: 40,
      );

  final double x0_25;
  final double x0_5;
  final double x1;
  final double x1_5;
  final double x2;
  final double x3;
  final double x4;
  final double x5;

  AppEdgeInsetsSpacingData asInsets() => AppEdgeInsetsSpacingData(this);

  @override
  List<Object?> get props => [
        x0_25.named('x0_25'),
        x0_5.named('x0_5'),
        x1.named('x1'),
        x1_5.named('x1_5'),
        x2.named('x2'),
        x3.named('x3'),
        x4.named('x4'),
        x5.named('x5'),
      ];
}

class AppEdgeInsetsSpacingData extends Equatable {
  const AppEdgeInsetsSpacingData(this._spacing);

  EdgeInsets get x0_25 => EdgeInsets.all(_spacing.x0_25);
  EdgeInsets get x0_5 => EdgeInsets.all(_spacing.x0_5);
  EdgeInsets get x1 => EdgeInsets.all(_spacing.x1);
  EdgeInsets get x1_5 => EdgeInsets.all(_spacing.x1_5);
  EdgeInsets get x2 => EdgeInsets.all(_spacing.x2);
  EdgeInsets get x3 => EdgeInsets.all(_spacing.x3);
  EdgeInsets get x4 => EdgeInsets.all(_spacing.x4);
  EdgeInsets get x5 => EdgeInsets.all(_spacing.x5);

  final AppSpacingData _spacing;

  @override
  List<Object?> get props => [_spacing];
}
