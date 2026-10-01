import 'dart:math';
import 'dart:ui';
import 'package:flutter/material.dart';

class SignInCurvePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final path = Path();

    path.moveTo(
      size.width * 0.13,
      size.height * 0.1319,
    );

    path.cubicTo(
      size.width * 0.30,
      size.height * 0.055,
      size.width * 0.30,
      size.height * 0.045,
      size.width * 0.55,
      size.height * 0.065,
    );

    path.cubicTo(
      size.width * 0.68,
      size.height * 0.065,
      size.width * 0.84,
      size.height * 0.10,
      size.width * 0.90,
      size.height * 0.28,
    );

    path.cubicTo(
      size.width * 0.94,
      size.height * 0.40,
      size.width * 0.88,
      size.height * 0.56,
      size.width * 0.75,
      size.height * 0.68,
    );

    path.cubicTo(
      size.width * 0.64,
      size.height * 0.79,
      size.width * 0.52,
      size.height * 0.87,
      size.width * 0.40,
      size.height * 0.86,
    );

    path.cubicTo(
      size.width * 0.25,
      size.height * 0.85,
      size.width * 0.10,
      size.height * 0.72,
      size.width * 0.08,
      size.height * 0.52,
    );

    path.cubicTo(
      size.width * 0.06,
      size.height * 0.36,

      size.width * 0.08,
      size.height * 0.20,

      size.width * 0.33,
      size.height * 0.15,
    );

    final metrics = path.computeMetrics().first;

    const int steps = 150;

    for (int i = 0; i < steps; i++) {
      final start = metrics.length * i / steps;
      final end = metrics.length * (i + 1) / steps;

      final extractPath = metrics.extractPath(start, end);

      final progress = i / steps;

      // Variable stroke width.
      final strokeWidth =
          2.2 +
              (5.0 * (0.4 + 0.5 * cos(progress * 3.14159 * 3)));

      final paint = Paint()
        ..color = const Color(0xFFDDEAF7)
        ..style = PaintingStyle.stroke
        ..strokeWidth = strokeWidth
        ..strokeCap = StrokeCap.round
        ..strokeJoin = StrokeJoin.round
        ..isAntiAlias = true;

      canvas.drawPath(extractPath, paint);
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}