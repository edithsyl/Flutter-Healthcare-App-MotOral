import 'package:custom_ui/custom_ui.dart';

class InvisibleLine extends StatelessWidget {
  const InvisibleLine({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
          width: 2,
          color: AppColorsData.regular().orangeTints_6.withOpacity(0)),
    );
  }
}

class OrangeLine extends StatelessWidget {
  const OrangeLine({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(width: 2, color: AppColorsData.regular().orangeTints_6),
    );
  }
}

class GreyLine extends StatelessWidget {
  const GreyLine({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(width: 2, color: AppColorsData.regular().greyTints_3),
    );
  }
}
