import 'package:custom_ui/custom_ui.dart';

class TodoDot extends StatelessWidget {
  const TodoDot({
    Key? key,
    required this.number,
  }) : super(key: key);

  final int number;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 28,
      height: 28,
      decoration: BoxDecoration(
        color: AppColorsData.regular().primaryWhite,
        border: Border.all(
          color: AppColorsData.regular().orangeTints_6,
          width: 2,
        ),
        shape: BoxShape.circle,
      ),
      child: Center(
        child: Text(
          '$number',
          style: AppTypographyData.primaryOrange().sourceSansProBodySmall,
        ),
      ),
    );
  }
}

class ThisDot extends StatelessWidget {
  const ThisDot({
    Key? key,
    required this.number,
  }) : super(key: key);

  final int number;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 32,
      height: 32,
      decoration: BoxDecoration(
        color: AppColorsData.regular().primaryOrange,
        border: Border.all(
          color: AppColorsData.regular().orangeTints_6,
          width: 2,
        ),
        shape: BoxShape.circle,
      ),
      child: Center(
        child: Text(
          '$number',
          style: AppTypographyData.primaryWhite().sourceSansProBodySmall,
        ),
      ),
    );
  }
}

class CompletedDot extends StatelessWidget {
  const CompletedDot({
    Key? key,
    required this.number,
  }) : super(key: key);

  final int number;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 28,
      height: 28,
      decoration: BoxDecoration(
        color: AppColorsData.regular().primaryWhite,
        border: Border.all(
          color: AppColorsData.regular().greyTints_2,
          width: 2,
        ),
        shape: BoxShape.circle,
      ),
      child: Center(
        child: Text(
          '$number',
          style: AppTypographyData.greyShades_2().sourceSansProBodySmall,
        ),
      ),
    );
  }
}
