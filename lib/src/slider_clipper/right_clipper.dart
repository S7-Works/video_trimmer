  import 'package:flutter/material.dart';

class MyPainter extends CustomPainter {
    @override
    void paint(Canvas canvas, Size size) {
      Paint paint = Paint();
      Path path = Path();
  

      // Path number 1
  

      paint.color = const Color(0xffC7FFBC);
      path = Path();
      path.lineTo(size.width, size.height * 0.64);
      path.cubicTo(size.width, size.height * 0.85, size.width * 0.8, size.height, size.width * 0.56, size.height);
      path.cubicTo(-0.21, size.height, -0.16, 0, size.width * 0.56, 0);
      path.cubicTo(size.width * 0.79, 0, size.width, size.height * 0.13, size.width, size.height * 0.34);
      path.cubicTo(size.width, size.height * 0.34, size.width, size.height * 0.64, size.width, size.height * 0.64);
      path.cubicTo(size.width, size.height * 0.64, size.width, size.height * 0.64, size.width, size.height * 0.64);
      canvas.drawPath(path, paint);
    }
    @override
    bool shouldRepaint(CustomPainter oldDelegate) {
      return true;
    }
  }
