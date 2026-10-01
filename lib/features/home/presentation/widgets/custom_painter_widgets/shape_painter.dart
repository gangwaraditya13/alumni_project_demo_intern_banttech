import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ShapePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.blue.withValues(alpha: 0.4)
      ..style = PaintingStyle.fill;

    // Circle radius
    final radius = size.width * 0.45;

    final path = Path()
    // Start where the circle intersects the top
      ..moveTo(size.width - radius, 0)
    // Top-right corner
      ..lineTo(size.width, 0)
    // Down the right side to the circle
      ..lineTo(size.width, radius)
    // Perfect circular arc
      ..arcTo(
        Rect.fromCircle(center: Offset(size.width, 0), radius: radius),
        pi / 2, // start angle
        pi / 2, // sweep angle
        false,
      )
      ..close();

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}