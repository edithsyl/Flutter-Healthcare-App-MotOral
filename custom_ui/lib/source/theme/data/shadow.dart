import 'package:custom_ui/source/utils/named.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/rendering.dart';

class AppShadowsData extends Equatable {
  const AppShadowsData({
    required this.up,
    required this.down,
  });

  static const Color shadowColor = Color.fromARGB(5, 0, 0, 0);
  static const double blurRad = 4;

  factory AppShadowsData.regular() => const AppShadowsData(
        up: BoxShadow(
          blurRadius: blurRad,
          color: shadowColor,
          offset: Offset(0, -3),
        ),
        down: BoxShadow(
          blurRadius: blurRad,
          color: shadowColor,
          offset: Offset(0, 4),
        ),
      );

  final BoxShadow up;
  final BoxShadow down;

  @override
  List<Object?> get props => [
        up.named('up'),
        down.named('down'),
      ];
}
