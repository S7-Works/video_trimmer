  import 'package:flutter/material.dart';

class MyPainter extends CustomPainter {
    @override
    void paint(Canvas canvas, Size size) {
      Paint paint = Paint();
      Path path = Path();
  

      // Path number 1
  

      paint.color = const Color(0xffC7FFBC);
      path = Path();
      path.lineTo(0, size.height * 0.38);
      path.cubicTo(0, size.height * 0.17, size.width / 5, size.height * 0.01, size.width * 0.44, size.height * 0.01);
      path.cubicTo(size.width * 1.21, size.height * 0.01, size.width * 1.16, size.height, size.width * 0.44, size.height);
      path.cubicTo(size.width / 5, size.height, 0, size.height * 0.88, 0, size.height * 0.67);
      path.cubicTo(0, size.height * 0.67, 0, size.height * 0.38, 0, size.height * 0.38);
      path.cubicTo(0, size.height * 0.38, 0, size.height * 0.38, 0, size.height * 0.38);
      canvas.drawPath(path, paint);
    }
    @override
    bool shouldRepaint(CustomPainter oldDelegate) {
      return true;
    }
  }
