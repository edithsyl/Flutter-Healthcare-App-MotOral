import 'package:custom_ui/custom_ui.dart';
import 'dart:math';

// FIXME
class OrangeWaveTopPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint();
    Path path = Path();

    paint.color = AppColorsData.regular().orangeTints_3;

    final y1 = sin(size.height);
    final y2 = sin(size.height + pi / 2);
    final y3 = sin(size.height + pi);

    final startPointY = size.height * (0.5 + 0.4 * y1);
    final controlPointY = size.height * (0.5 + 0.4 * y2);
    final endPointY = size.height * (0.5 + 0.4 * y3);

    path.moveTo(size.width * 0, startPointY);
    path.quadraticBezierTo(
        size.width * 0.5, controlPointY, size.width, endPointY);
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
    path.close();
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
  @override
  bool shouldRebuildSemantics(CustomPainter oldDelegate) => false;
}

// Widget _buildOrangeWaveTopBackground() {
//   return CustomPaint(
//     painter: OrangeWaveTopPainter(),
//     isComplex: true,
//     willChange: false,
//   );
// }

class _buildOrangeWaveTopBackground extends StatelessWidget {
  const _buildOrangeWaveTopBackground({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: OrangeWaveTopPainter(),
      isComplex: true,
      willChange: false,
    );
  }
}

class CurvyAppBarPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint();
    Path path = Path();

    paint.color = AppColorsData.regular().orangeTints_3;

    path.lineTo(0, size.height - size.height / 5);
    path.lineTo(size.width / 1.2, size.height);
    //Added this line
    path.relativeQuadraticBezierTo(15, 3, 30, -5);
    path.lineTo(size.width, size.height - size.height / 5);
    path.lineTo(size.width, 0);
    path.close();
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}

class ProfileBackgroundPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint();
    Path path = Path();

    paint.color = AppColorsData.regular().primaryOrange;

    path.lineTo(0, size.height / 2);
    path.relativeQuadraticBezierTo(
        0, -140, size.width / 2, size.height / 3 - size.height / 2);
    path.lineTo(size.width / 2, size.height / 3);
    path.relativeQuadraticBezierTo(size.width / 2 + 24, 146, size.width / 2,
        size.height / 3 - size.height / 2);
    //path.lineTo(size.width, size.height / 2 - size.height / 3);
    path.lineTo(size.width, 0);
    path.close();
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
