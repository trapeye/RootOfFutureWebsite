import 'package:flutter/material.dart';

class LineOrganizationOne extends CustomPainter {
  final Color strokeColor;
  final PaintingStyle paintingStyle;
  final double strokeWidth;

  LineOrganizationOne(
      {this.strokeColor = Colors.black,
      this.strokeWidth = 3,
      this.paintingStyle = PaintingStyle.stroke});

  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = strokeColor
      ..strokeWidth = strokeWidth
      ..style = paintingStyle;
    final p1 = Offset(-500, 0);
    final p2 = Offset(500, 0);

    //right
    final p3 = Offset(500, 56);
    final p4 = Offset(500, 0);

    //left
    final p5 = Offset(-500, 56);
    final p6 = Offset(-500, 0);

    //center left line
    final p7 = Offset(-170, 56);
    final p8 = Offset(-170, 0);

    //center right line
    final p9 = Offset(170, 56);
    final p10 = Offset(170, 0);

    canvas.drawLine(p1, p2, paint);

    //right Line
    canvas.drawLine(p3, p4, paint);

    //left Line
    canvas.drawLine(p5, p6, paint);

    //center left line
    canvas.drawLine(p7, p8, paint);

    //center right line
    canvas.drawLine(p9, p10, paint);
  }

  @override
  bool shouldRepaint(LineOrganizationOne oldDelegate) {
    return oldDelegate.strokeColor != strokeColor ||
        oldDelegate.paintingStyle != paintingStyle ||
        oldDelegate.strokeWidth != strokeWidth;
  }
}

class LineOrganizationTwo extends CustomPainter {
  final Color strokeColor;
  final PaintingStyle paintingStyle;
  final double strokeWidth;

  LineOrganizationTwo(
      {this.strokeColor = Colors.black,
      this.strokeWidth = 3,
      this.paintingStyle = PaintingStyle.stroke});

  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = strokeColor
      ..strokeWidth = strokeWidth
      ..style = paintingStyle;
    final p1 = Offset(-330, 0);
    final p2 = Offset(330, 0);
    final p3 = Offset(330, 40);
    final p4 = Offset(330, 0);
    final p5 = Offset(-330, 40);
    final p6 = Offset(-330, 0);
    canvas.drawLine(p1, p2, paint);
    canvas.drawLine(p3, p4, paint);
    canvas.drawLine(p5, p6, paint);
  }

  @override
  bool shouldRepaint(LineOrganizationTwo oldDelegate) {
    return oldDelegate.strokeColor != strokeColor ||
        oldDelegate.paintingStyle != paintingStyle ||
        oldDelegate.strokeWidth != strokeWidth;
  }
}
