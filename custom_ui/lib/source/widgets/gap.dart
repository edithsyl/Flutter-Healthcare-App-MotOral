import 'package:flutter/material.dart';

class VerticalGap extends StatelessWidget {
  const VerticalGap({
    Key? key,
    required this.num,
  }) : super(key: key);
  final double num;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: num,
    );
  }
}

class HorizontalGap extends StatelessWidget {
  const HorizontalGap({
    Key? key,
    required this.num,
  }) : super(key: key);
  final double num;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: num,
    );
  }
}
