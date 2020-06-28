import 'package:flutter/material.dart';

class Rhombus extends CustomPainter {
  final Color strokeColor;
  final PaintingStyle paintingStyle;
  final double strokeWidth;

  Rhombus(
      {this.strokeColor = Colors.black,
      this.strokeWidth = 3,
      this.paintingStyle = PaintingStyle.stroke});

  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = strokeColor
      ..strokeWidth = strokeWidth
      ..style = paintingStyle;

    canvas.drawPath(getRhombusPath(size.width, size.height), paint);
  }

  Path getRhombusPath(double x, double y) {
    return Path()
      ..moveTo(0, y / 2)
      ..lineTo(x / 2, 0)
      ..lineTo(x, y / 2)
      ..lineTo(x / 2, y)
      ..lineTo(0, y / 2);
  }

  @override
  bool shouldRepaint(Rhombus oldDelegate) {
    return oldDelegate.strokeColor != strokeColor ||
        oldDelegate.paintingStyle != paintingStyle ||
        oldDelegate.strokeWidth != strokeWidth;
  }
}
