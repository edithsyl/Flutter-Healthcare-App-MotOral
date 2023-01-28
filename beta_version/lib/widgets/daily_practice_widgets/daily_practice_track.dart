import 'package:custom_ui/custom_ui.dart';

import 'daily_practice_dots.dart';
import 'daily_practice_lines.dart';

class DailyPracticeTrack extends StatefulWidget {
  const DailyPracticeTrack({super.key});

  @override
  State<DailyPracticeTrack> createState() => _DailyPracticeTrackState();
}

class _DailyPracticeTrackState extends State<DailyPracticeTrack> {
  int currEx = 1;
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class DailyPractice1stEx extends StatelessWidget {
  const DailyPractice1stEx({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      children: const [
        InvisibleLine(),
        ThisDot(number: 1),
        OrangeLine(),
        ////
        OrangeLine(),
        TodoDot(number: 2),
        OrangeLine(),
        ////
        OrangeLine(),
        TodoDot(number: 3),
        InvisibleLine(),
      ],
    );
  }
}

class DailyPractice2ndEx extends StatelessWidget {
  const DailyPractice2ndEx({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      children: const [
        InvisibleLine(),
        CompletedDot(number: 1),
        GreyLine(),
        ////
        GreyLine(),
        ThisDot(number: 2),
        OrangeLine(),
        ////
        OrangeLine(),
        TodoDot(number: 3),
        InvisibleLine(),
      ],
    );
  }
}

class DailyPractice3rdEx extends StatelessWidget {
  const DailyPractice3rdEx({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      children: const [
        InvisibleLine(),
        CompletedDot(number: 1),
        GreyLine(),
        ////
        GreyLine(),
        CompletedDot(number: 2),
        GreyLine(),
        ////
        GreyLine(),
        ThisDot(number: 3),
        InvisibleLine(),
      ],
    );
  }
}
