import 'package:custom_ui/custom_ui.dart';
import 'dart:math';

class CurvyAppBarPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint();
    Path path = Path();

    /// fill the whole screen with white
    paint.color = AppColorsData.regular().primaryWhite;
    var rect = Rect.fromLTWH(0, 0, size.width, size.height);
    canvas.drawRect(rect, paint);

    /// change paint to orange
    paint.color = AppColorsData.regular().orangeTints_6;

    path.lineTo(0, size.height / 7);
    path.relativeQuadraticBezierTo(size.width / 6, 32, size.width / 2, -20);
    path.lineTo(size.width / 2, size.height / 7 - 20);
    path.relativeQuadraticBezierTo(
        size.width / 2 - 20, -90, size.width / 1.5, -40);
    //path.lineTo(size.width, size.height - size.height / 5);
    path.lineTo(size.width, 0);
    path.close();
    canvas.drawPath(path, paint);

    Path path2 = Path();
    Paint paint2 = Paint();
    paint2.color = AppColorsData.regular().orangeTints_4;
    path2.lineTo(-30, size.height / 15);
    path2.relativeQuadraticBezierTo(
        size.width / 5, 32 + 15, size.width / 2, -20);
    path2.lineTo(size.width / 2 - 30, size.height / 15 - 20);
    path2.relativeQuadraticBezierTo(
        size.width / 2 - 20 - 12, -82, size.width / 1.5, -40);
    path2.lineTo(size.width, 0);
    path2.close();
    canvas.drawPath(path2, paint2);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}

class ProfileBackgroundPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint();
    Path path = Path();

    /// fill the whole screen with white
    paint.color = AppColorsData.regular().primaryWhite;
    var rect = Rect.fromLTWH(0, 0, size.width, size.height);
    canvas.drawRect(rect, paint);

    /// change paint to orange
    paint.color = AppColorsData.regular().primaryOrange;

    path.lineTo(0, 390);
    path.relativeQuadraticBezierTo(0, -140, size.width / 2, 780 / 3 - 390);
    path.lineTo(size.width / 2, 780 / 3);
    path.relativeQuadraticBezierTo(
        size.width / 2 + 24, 146, size.width / 2, 780 / 3 - 390);

    path.lineTo(size.width, 0);
    path.close();
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
