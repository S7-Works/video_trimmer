import 'package:flutter/material.dart';

//Copy this CustomPainter code to the Bottom of the File
class RPSCustomClipper extends CustomClipper<Path>{
  @override
  Path getClip(Size size)  {
    Path path_0 = Path();
    
    path_0.moveTo(size.width * 0.9970149, size.height * 0.6662040);
    path_0.lineTo(size.width * 0.9970149, size.height * 0.3204700);
    path_0.cubicTo(
        size.width * 0.9970149,
        size.height * 0.1518696,
        size.width * 0.9763642,
        size.height * 0.01633720,
        size.width * 0.9512119,
        size.height * 0.02007560);
    path_0.cubicTo(
        size.width * 0.8572269,
        size.height * 0.03404520,
        size.width * 0.6474716,
        size.height * 0.06253540,
        size.width * 0.5000000,
        size.height * 0.06253540);
    path_0.cubicTo(
        size.width * 0.3525284,
        size.height * 0.06253540,
        size.width * 0.1427743,
        size.height * 0.03404520,
        size.width * 0.04878776,
        size.height * 0.02007560);
    path_0.cubicTo(
        size.width * 0.02363588,
        size.height * 0.01633720,
        size.width * 0.002985075,
        size.height * 0.1518696,
        size.width * 0.002985075,
        size.height * 0.3204700);
    path_0.lineTo(size.width * 0.002985075, size.height * 0.6662040);
    path_0.cubicTo(
        size.width * 0.002985075,
        size.height * 0.8342340,
        size.width * 0.02349164,
        size.height * 0.9695140,
        size.width * 0.04855791,
        size.height * 0.9665320);
    path_0.cubicTo(
        size.width * 0.1424337,
        size.height * 0.9553680,
        size.width * 0.3524418,
        size.height * 0.9325360,
        size.width * 0.5000000,
        size.height * 0.9325360);
    path_0.cubicTo(
        size.width * 0.6475582,
        size.height * 0.9325360,
        size.width * 0.8575672,
        size.height * 0.9553680,
        size.width * 0.9514418,
        size.height * 0.9665320);
    path_0.cubicTo(
        size.width * 0.9765075,
        size.height * 0.9695140,
        size.width * 0.9970149,
        size.height * 0.8342340,
        size.width * 0.9970149,
        size.height * 0.6662040);
    path_0.close();
    path_0.moveTo(size.width * 0.04885403, size.height * 0.00008055420);
    path_0.cubicTo(size.width * 0.02202496, size.height * -0.003907160, 0,
        size.height * 0.1406706, 0, size.height * 0.3204700);
    path_0.lineTo(0, size.height * 0.6662040);
    path_0.cubicTo(
        0,
        size.height * 0.8453880,
        size.width * 0.02187110,
        size.height * 0.9897100,
        size.width * 0.04861075,
        size.height * 0.9865300);
    path_0.cubicTo(
        size.width * 0.1424884,
        size.height * 0.9753640,
        size.width * 0.3524716,
        size.height * 0.9525360,
        size.width * 0.5000000,
        size.height * 0.9525360);
    path_0.cubicTo(
        size.width * 0.6475284,
        size.height * 0.9525360,
        size.width * 0.8575104,
        size.height * 0.9753640,
        size.width * 0.9513881,
        size.height * 0.9865300);
    path_0.cubicTo(size.width * 0.9781284, size.height * 0.9897100, size.width,
        size.height * 0.8453880, size.width, size.height * 0.6662040);
    path_0.lineTo(size.width, size.height * 0.3204700);
    path_0.cubicTo(
        size.width,
        size.height * 0.1406706,
        size.width * 0.9779761,
        size.height * -0.003907160,
        size.width * 0.9511463,
        size.height * 0.00008055300);
    path_0.cubicTo(
        size.width * 0.8571582,
        size.height * 0.01405038,
        size.width * 0.6474358,
        size.height * 0.04253540,
        size.width * 0.5000000,
        size.height * 0.04253540);
    path_0.cubicTo(
        size.width * 0.3525642,
        size.height * 0.04253540,
        size.width * 0.1428424,
        size.height * 0.01405038,
        size.width * 0.04885403,
        size.height * 0.00008055420);
    path_0.close();

    // Paint paint_0_fill = Paint()..style = PaintingStyle.stroke;
    // paint_0_fill.color = Colors.green.withOpacity(1.0);
    // paint_0_fill.strokeWidth = 3;
    return path_0;
    // canvas.drawPath(path_0, paint_0_fill);
  }

   @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true; // you can also change this to true to repaint.
  }
}
