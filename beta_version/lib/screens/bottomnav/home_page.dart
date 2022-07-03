import 'package:beta_version/screens/customtoast.dart';
import 'package:custom_ui/custom_ui.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          const Text('Setting page'),
          const VerticalGap(num: 25),
          LongAppSolidButton(
            title: 'test fluttertoast',
            onPressed: () {
              // Toast.showToast(
              //   toastDuration: Duration(milliseconds: 500),
              //   child: Material(
              //     color: Colors.white,
              //     child: Row(
              //       mainAxisSize: MainAxisSize.min,
              //       children: [
              //         Icon(Icons.face),
              //         Text(
              //           "Press and hold to send Alert!",
              //           style: TextStyle(color: Colors.black87, fontSize: 16.0),
              //         )
              //       ],
              //     ),
              //   ),
              //   gravity: ToastGravity.CENTER,
              // );
            },
          ),
          const VerticalGap(num: 25),
          ToastContext(),
        ],
      ),
    );
  }
}
