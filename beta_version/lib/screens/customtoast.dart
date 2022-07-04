import 'package:custom_ui/custom_ui.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

// FIXME
class ToastContext extends StatefulWidget {
  @override
  _ToastContextState createState() => _ToastContextState();
}

class _ToastContextState extends State<ToastContext> {
  late FToast fToast;

  Widget toast = Container(
    padding: EdgeInsets.all(AppSpacingData.regular().x1_5),
    decoration: BoxDecoration(
      borderRadius: const AppRadiusData.regular().asBorderRadius().allRegular,
      color: AppColorsData.regular().primaryWhite,
      boxShadow: [
        AppShadowsData.regular().down,
      ],
    ),
    child: Row(
      mainAxisSize: MainAxisSize.min,
      children: const <Widget>[
        Icon(Icons.check),
        HorizontalGap(num: 12),
        Text("This is a Custom Toast"),
      ],
    ),
  );

  _showToast() {
    fToast.showToast(
      child: toast,
      gravity: ToastGravity.BOTTOM,
      toastDuration: Duration(seconds: 2),
    );
  }

  _showBuilderToast() {
    fToast.showToast(
        child: toast,
        gravity: ToastGravity.BOTTOM,
        toastDuration: Duration(seconds: 2),
        positionedToastBuilder: (context, child) {
          return Positioned(
            child: child,
            top: 16.0,
            left: 16.0,
          );
        });
  }

  _showToastCancel() {
    Widget toastWithButton = Container(
      padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 12.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25.0),
        color: AppColorsData.regular().orangeTints_7,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Expanded(
            child: Text(
              "This is a Custom Toast This is a Custom Toast This is a Custom Toast This is a Custom Toast This is a Custom Toast This is a Custom Toast",
              softWrap: true,
              style: AppTypographyData.greyShades_3().sourceSansProBodySmall,
            ),
          ),
          IconButton(
            icon: const Icon(Icons.close),
            color: Colors.white,
            onPressed: () {
              fToast.removeCustomToast();
            },
          )
        ],
      ),
    );
    fToast.showToast(
      child: toastWithButton,
      gravity: ToastGravity.CENTER,
      toastDuration: const Duration(seconds: 50),
    );
  }

  _removeToast() {
    fToast.removeCustomToast();
  }

  _removeAllQueuedToasts() {
    fToast.removeQueuedCustomToasts();
  }

  @override
  void initState() {
    super.initState();
    fToast = FToast();
    fToast.init(context);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const VerticalGap(num: 24),
        ElevatedButton(
          child: const Text("Show Custom Toast"),
          onPressed: () {
            _showToast();
          },
        ),
        ElevatedButton(
          child: const Text("Show Custom Toast via PositionedToastBuilder"),
          onPressed: () {
            _showBuilderToast();
          },
        ),
        const VerticalGap(num: 24),
        ElevatedButton(
          child: const Text("Custom Toast With Close Button"),
          onPressed: () {
            _showToastCancel();
          },
        ),
        const VerticalGap(num: 24),
        ElevatedButton(
          child: const Text("Cancel Toast"),
          onPressed: () {
            _removeToast();
          },
        ),
        const VerticalGap(num: 24),
        ElevatedButton(
          child: const Text("Remove Queued Toasts"),
          onPressed: () {
            _removeAllQueuedToasts();
          },
        ),
      ],
    );
  }
}
