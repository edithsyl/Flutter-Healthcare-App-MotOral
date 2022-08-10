import 'package:beta_version/widgets/people/therapist_row.dart';
import 'package:custom_ui/custom_ui.dart';
import 'package:go_router/go_router.dart';

class showTherapists extends StatelessWidget {
  const showTherapists({super.key});

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
          return TherapistRow(
            name: 'Matt',
            title: 'Chief therapist',
            photoURL:
                "https://pbs.twimg.com/profile_images/1304985167476523008/QNHrwL2q_400x400.jpg",
            onTap: () => context.go('/therapistProfile'),
            buttonOnTap:
                () {}, //FIXME: change this when booking system eg. date picker is completed
          );
        },
      ),
    );
  }
}
