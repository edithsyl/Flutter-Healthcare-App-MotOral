import 'package:beta_version/widgets/people/buddies_row.dart';
import 'package:custom_ui/custom_ui.dart';
import 'package:flutter/material.dart';

class showBuddies extends StatelessWidget {
  const showBuddies({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: ListView.builder(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        scrollDirection: Axis.vertical,
        itemCount: 5,
        itemBuilder: (context, index) {
          return BuddiesRow(
            name: 'Matt',
            xp: 100,
            isOnline: true,
            photoURL:
                "https://pbs.twimg.com/profile_images/1304985167476523008/QNHrwL2q_400x400.jpg",
            onTap: () {},
          );
        },
      ),
    );
  }
}
