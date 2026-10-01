import 'package:flutter/cupertino.dart';

class DottedLinePainter extends CustomPainter {
  final Color color;
  final double dotRadius;
  final double dotSpace;

  DottedLinePainter({required this.color, required this.dotRadius, required this.dotSpace});

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()..color = color..style = PaintingStyle.fill;
    double currentX = dotRadius;
    while (currentX < size.width) {
      canvas.drawCircle(Offset(currentX, size.height / 2), dotRadius, paint);
      currentX += (dotRadius * 2) + dotSpace;
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}