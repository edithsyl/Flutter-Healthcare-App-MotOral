import 'package:beta_version/data/badges_data.dart';
import 'package:beta_version/widgets/profile_widgets/badge_row.dart';
import 'package:custom_ui/custom_ui.dart';

class BadgesList extends StatelessWidget {
  const BadgesList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        ListView.builder(
          shrinkWrap: true,
          physics: const BouncingScrollPhysics(
              parent: NeverScrollableScrollPhysics()),
          scrollDirection: Axis.vertical,
          itemCount: Badges.data.length,
          itemBuilder: (context, index) {
            return BadgeRow(
              thisBadge: Badges.data[index],
            );
          },
        ),
      ],
    );
  }
}
