import 'package:beta_version/widgets/snack_bars.dart';
import 'package:custom_ui/custom_ui.dart';
import 'package:flutter/material.dart';

//FIXME
class StatisticsList extends StatelessWidget {
  const StatisticsList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: const [
          Text('stats here'),
          const VerticalGap(num: 24),
          SizedBox(
            height: 300,
          )
        ],
      ),
    );
  }
}
