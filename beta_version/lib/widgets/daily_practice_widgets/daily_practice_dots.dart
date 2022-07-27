import 'package:custom_ui/custom_ui.dart';

class TodoDot extends StatelessWidget {
  const TodoDot({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 14,
      height: 14,
      decoration: BoxDecoration(
        color: AppColorsData.regular().primaryWhite,
        border: Border.all(
          color: AppColorsData.regular().orangeTints_6,
          width: 2,
        ),
        shape: BoxShape.circle,
      ),
    );
  }
}

class ThisDot extends StatelessWidget {
  const ThisDot({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 16,
      height: 16,
      decoration: BoxDecoration(
        color: AppColorsData.regular().primaryOrange,
        border: Border.all(
          color: AppColorsData.regular().orangeTints_6,
          width: 2,
        ),
        shape: BoxShape.circle,
      ),
    );
  }
}

class CompletedDot extends StatelessWidget {
  const CompletedDot({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 12,
      height: 12,
      decoration: BoxDecoration(
        color: AppColorsData.regular().primaryWhite,
        border: Border.all(
          color: AppColorsData.regular().greyTints_3,
          width: 2,
        ),
        shape: BoxShape.circle,
      ),
    );
  }
}
