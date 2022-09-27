import 'package:beta_version/widgets/people/buddies_row.dart';
import 'package:custom_ui/custom_ui.dart';
import 'package:flutter/material.dart';

class ShowBuddies extends StatelessWidget {
  const ShowBuddies({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: ListView.builder(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        scrollDirection: Axis.vertical,
        itemCount: 10,
        itemBuilder: (context, index) {
          return BuddiesRow(
            name: 'Average Joe',
            xp: 100,
            isOnline: true,
            photoURL: "https://i.pravatar.cc/200",
            onTap: () {},
          );
        },
      ),
    );
  }
}
