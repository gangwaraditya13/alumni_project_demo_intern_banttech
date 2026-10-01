import 'package:flutter/cupertino.dart';

class Circles extends CustomPainter {
  double r;
  Color colors;
  Offset offset;

  Circles(this.r, this.colors, this.offset);

  @override
  void paint(Canvas canvas, Size size) {
    Paint pa = Paint()
      ..style = PaintingStyle.fill
      ..color = colors;
    canvas.drawCircle(offset, r, pa);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}