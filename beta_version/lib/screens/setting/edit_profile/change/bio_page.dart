import 'package:beta_version/widgets/input_widgets.dart';
import 'package:beta_version/widgets/top_app_bar.dart';
import 'package:custom_ui/custom_ui.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';

// TODO

class BioPage extends StatefulWidget {
  const BioPage({Key? key}) : super(key: key);

  @override
  State<BioPage> createState() => _BioPageState();
}

class _BioPageState extends State<BioPage> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  final TextEditingController controller = TextEditingController();
  String initialCountry = 'NG';
  PhoneNumber number = PhoneNumber(isoCode: 'NG');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(80),
        child: Container(
          width: double.infinity,
          padding: const EdgeInsets.fromLTRB(24, 30, 24, 0),
          decoration: BoxDecoration(
            color: AppColorsData.regular().primaryOrange,
          ),
          child: AppBarContent(
            title: 'Bio',
            leftOnPressed: () {
              context.goNamed('eprofile');
            },
          ),
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
            child: Column(
          children: [
            //FIXME
            const VerticalGap(num: 24),
            Text('Set a unique username so other people can identify you.',
                style: AppTypographyData.orangeTints_4().sourceSansProBody),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                LongAppOutlineButton(
                  title: 'Cancel',
                  onPressed: () {
                    // context.goNamed('last_recording');
                  },
                ),
                const HorizontalGap(num: 16),
                LongAppSolidButton(
                  title: 'Save',
                  onPressed: () {},
                ),
              ],
            )
          ],
        )),
      ),
    );
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
}
