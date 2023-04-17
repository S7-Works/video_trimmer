import 'dart:math';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class TrimEditorPainter extends CustomPainter {
  /// To define the start offset
  final Offset startPos;

  /// To define the end offset
  final Offset endPos;

  /// To define the horizontal length of the selected video area
  final double scrubberAnimationDx;

  /// For specifying a circular border radius
  /// to the corners of the trim area.
  /// By default it is set to `4.0`.
  final double borderRadius;

  /// For specifying a size to the start holder
  /// of the video trimmer area.
  /// By default it is set to `0.5`.
  final double startCircleSize;

  /// For specifying a size to the start holder
  /// of the video trimmer area.
  /// By default it is set to `0.5`.
  final double innerStartCircleSize;

  /// For specifying a size to the end holder
  /// of the video trimmer area.
  /// By default it is set to `0.5`.
  final double endCircleSize;

  /// For specifying a size to the end holder
  /// of the video trimmer area.
  /// By default it is set to `0.5`.
  final double innerEndCircleSize;

  /// For specifying the width of the border around
  /// the trim area. By default it is set to `3`.
  final double borderWidth;

  /// For specifying the width of the video scrubber
  final double scrubberWidth;

  /// For specifying whether to show the scrubber
  final bool showScrubbers;

  /// For specifying a color to the border of
  /// the trim area. By default it is set to `Colors.white`.
  final Color borderPaintColor;

  /// For specifying a color to the circle.
  /// By default it is set to `Colors.white`
  final Color circlePaintColor;

  /// For specifying a color to the inner circle.
  /// By default it is set to `Colors.black`
  final Color innerCirclePaintColor;

  /// For specifying a color to the video
  /// scrubber inside the trim area. By default it is set to
  /// `Colors.white`.
  final Color scrubberPaintColor;

  /// For drawing the trim editor slider
  ///
  /// The required parameters are [startPos], [endPos]
  /// & [scrubberAnimationDx]
  ///
  /// * [startPos] to define the start offset
  ///
  ///
  /// * [endPos] to define the end offset
  ///
  ///
  /// * [scrubberAnimationDx] to define the horizontal length of the
  /// selected video area
  ///
  ///
  /// The optional parameters are:
  ///
  /// * [startCircleSize] for specifying a size to the start holder
  /// of the video trimmer area.
  /// By default it is set to `0.5`.
  ///
  ///
  /// * [endCircleSize] for specifying a size to the end holder
  /// of the video trimmer area.
  /// By default it is set to `0.5`.
  ///
  ///
  /// * [borderRadius] for specifying a circular border radius
  /// to the corners of the trim area.
  /// By default it is set to `4.0`.
  ///
  ///
  /// * [borderWidth] for specifying the width of the border around
  /// the trim area. By default it is set to `3`.
  ///
  ///
  /// * [scrubberWidth] for specifying the width of the video scrubber
  ///
  ///
  /// * [showScrubber] for specifying whether to show the scrubber
  ///
  ///
  /// * [borderPaintColor] for specifying a color to the border of
  /// the trim area. By default it is set to `Colors.white`.
  ///
  ///
  /// * [circlePaintColor] for specifying a color to the circle.
  /// By default it is set to `Colors.white`.
  ///
  ///
  /// * [scrubberPaintColor] for specifying a color to the video
  /// scrubber inside the trim area. By default it is set to
  /// `Colors.white`.
  ///
  TrimEditorPainter({
    required this.startPos,
    required this.endPos,
    required this.scrubberAnimationDx,
    this.startCircleSize = 0.5,
    this.innerStartCircleSize = 0.3,
    this.endCircleSize = 0.5,
    this.innerEndCircleSize = 0.3,
    this.borderRadius = 4,
    this.borderWidth = 3,
    this.scrubberWidth = 1,
    this.showScrubbers = true,
    this.borderPaintColor = Colors.white,
    this.circlePaintColor = Colors.white,
    this.innerCirclePaintColor = Colors.black,
    this.scrubberPaintColor = Colors.white,
  });

  @override
  void paint(Canvas canvas, Size size) async {
    debugPrint("startCircleSize , $startCircleSize");
    // var borderPaint = Paint()
    //   ..color = borderPaintColor
    //   ..strokeWidth = borderWidth
    //   ..style = PaintingStyle.stroke
    //   ..strokeCap = StrokeCap.round;

    // var circlePaint = Paint()
    //   ..color = circlePaintColor
    //   ..strokeWidth = 1
    //   ..style = PaintingStyle.fill
    //   ..strokeCap = StrokeCap.round;

    var scrubberPaint = Paint()
      ..color = scrubberPaintColor
      ..strokeWidth = scrubberWidth
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round;

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

    Paint paintBorderBlob = Paint()..style = PaintingStyle.stroke;

    /// TODO: Make trimmer border color dynamic
    paintBorderBlob.color = Colors.white;
    paintBorderBlob.strokeWidth = 1;

    if (showScrubbers) {
      if (scrubberAnimationDx.toInt() > startPos.dx.toInt()) {
        canvas.drawLine(
          Offset(scrubberAnimationDx, 0),
          Offset(scrubberAnimationDx, 0) + Offset(0, endPos.dy),
          scrubberPaint,
        );
      }
    }

    canvas.drawPath(
      path_0,
      paintBorderBlob,
    );

    // Trimmer Left Button

    Paint paint = Paint();
    Path path = Path();

    paint.color = const Color(0xffC7FFBC);
    path = Path();
    path.lineTo(
      startPos.dx + 0 - 30,
      startPos.dy + size.height * 0.38,
    );
    path.cubicTo(
      startPos.dx + 0 - 30,
      startPos.dy + size.height * 0.17,
      startPos.dx + 55 / 5 - 30,
      startPos.dy + size.height * 0.01,
      startPos.dx + 55 * 0.44 - 30,
      startPos.dy + size.height * 0.01,
    );
    path.cubicTo(
      startPos.dx + 55 * 1.21 - 30,
      startPos.dy + size.height * 0.01,
      startPos.dx + 55 * 1.16 - 30,
      startPos.dy + size.height,
      startPos.dx + 55 * 0.44 - 30,
      startPos.dy + size.height,
    );
    path.cubicTo(
      startPos.dx + 55 / 5 - 30,
      startPos.dy + size.height,
      startPos.dx + 0 - 30,
      startPos.dy + size.height * 0.88,
      startPos.dx + 0 - 30,
      startPos.dy + size.height * 0.67,
    );
    path.cubicTo(
      startPos.dx + 0 - 30,
      startPos.dy + size.height * 0.67,
      startPos.dx + 0 - 30,
      startPos.dy + size.height * 0.38,
      startPos.dx + 0 - 30,
      startPos.dy + size.height * 0.38,
    );
    path.cubicTo(
      startPos.dx + 0 - 30,
      startPos.dy + size.height * 0.38,
      startPos.dx + 0 - 30,
      startPos.dy + size.height * 0.38,
      startPos.dx + 0 - 30,
      startPos.dy + size.height * 0.38,
    );

    Path path_01 = Path();
    path_01.moveTo(
      startPos.dx + 26 * 0.4553658 - 10,
      18 * 0.9401385 + 15,
    );

    path_01.cubicTo(
      startPos.dx + 26 * 0.2480268 - 10,
      18 * 1.076500 + 15,
      startPos.dx + 26 * 0.01346632 - 10,
      18 * 0.8548385 + 15,
      startPos.dx + 26 * 0.01346637 - 10,
      18 * 0.5225362 + 15,
    );
    path_01.cubicTo(
      startPos.dx + 26 * 0.01346637 - 10,
      18 * 0.1985646 + 15,
      startPos.dx + 26 * 0.2373437 - 10,
      18 * -0.02296385 + 15,
      startPos.dx + 26 * 0.4431542 - 10,
      18 * 0.09735615 + 15,
    );
    path_01.lineTo(
      startPos.dx + 26 * 0.8933474 - 10,
      18 * 0.3605454 + 15,
    );
    path_01.cubicTo(
      startPos.dx + 26 * 0.9341053 - 10,
      18 * 0.3843754 + 15,
      startPos.dx + 26 * 0.9608368 - 10,
      18 * 0.4420731 + 15,
      startPos.dx + 26 * 0.9608368 - 10,
      18 * 0.5062354 + 15,
    );
    path_01.cubicTo(
      startPos.dx + 26 * 0.9608368 - 10,
      18 * 0.5679823 + 15,
      startPos.dx + 26 * 0.9360579 - 10,
      18 * 0.6239885 + 15,
      startPos.dx + 26 * 0.8975316 - 10,
      18 * 0.6493269 + 15,
    );
    path_01.lineTo(
      startPos.dx + 26 * 0.4553658 - 10,
      18 * 0.9401385 + 15,
    );
    path_01.close();

    Paint paint0Fill = Paint()..style = PaintingStyle.fill;
    paint0Fill.color = Colors.black.withOpacity(1.0);

    if (startCircleSize != 0.0) {
      canvas.drawPath(path, paint);
      canvas.drawPath(path_01, paint0Fill);
    }

    // End of Trimmer left Button

// Trimmer Right Button

    Paint paint1 = Paint();
    Path path1 = Path();

    paint1.color = const Color(0xffC7FFBC);
    path1 = Path();
    path1.lineTo(
      endPos.dx + 60 - 30,
      size.height * 0.64,
    );
    path1.cubicTo(
      endPos.dx + 60 - 30,
      size.height * 0.85,
      endPos.dx + 60 * 0.8 - 30,
      size.height,
      endPos.dx + 60 * 0.56 - 30,
      size.height,
    );

    path1.cubicTo(
      endPos.dx + -0.21 - 30,
      size.height,
      endPos.dx + -0.16 - 30,
      0,
      endPos.dx + 60 * 0.56 - 30,
      0,
    );

    path1.cubicTo(endPos.dx + 60 * 0.79 - 30, 0, endPos.dx + 60 - 30,
        size.height * 0.13, endPos.dx + 60 - 30, size.height * 0.34);

    path1.cubicTo(endPos.dx + 60 - 30, size.height * 0.34, endPos.dx + 60 - 30,
        size.height * 0.64, endPos.dx + 60 - 30, size.height * 0.64);

    path1.cubicTo(endPos.dx + 60 - 30, size.height * 0.64, endPos.dx + 60 - 30,
        size.height * 0.64, endPos.dx + 60 - 30, size.height * 0.64);

    canvas.drawPath(path1, paint1);

    Path path_02 = Path();
    path_02.moveTo(
      26 * 0.4553658 - 10,
      18 * 0.9401385 + 15,
    );

    path_02.cubicTo(
      26 * 0.2480268 - 10,
      18 * 1.076500 + 15,
      26 * 0.01346632 - 10,
      18 * 0.8548385 + 15,
      26 * 0.01346637 - 10,
      18 * 0.5225362 + 15,
    );
    path_02.cubicTo(
      26 * 0.01346637 - 10,
      18 * 0.1985646 + 15,
      26 * 0.2373437 - 10,
      18 * -0.02296385 + 15,
      26 * 0.4431542 - 10,
      18 * 0.09735615 + 15,
    );
    path_02.lineTo(
      26 * 0.8933474 - 10,
      18 * 0.3605454 + 15,
    );
    path_02.cubicTo(
      26 * 0.9341053 - 10,
      18 * 0.3843754 + 15,
      26 * 0.9608368 - 10,
      18 * 0.4420731 + 15,
      26 * 0.9608368 - 10,
      18 * 0.5062354 + 15,
    );
    path_02.cubicTo(
      26 * 0.9608368 - 10,
      18 * 0.5679823 + 15,
      26 * 0.9360579 - 10,
      18 * 0.6239885 + 15,
      26 * 0.8975316 - 10,
      18 * 0.6493269 + 15,
    );
    path_02.lineTo(
      26 * 0.4553658 - 10,
      18 * 0.9401385 + 15,
    );

    final translateM = Float64List.fromList(
        [1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, endPos.dx, endPos.dy, 0, 1]);
    final rotateM = Float64List.fromList([
      cos(22 / 7),
      sin(22 / 7),
      0,
      0,
      -sin(22 / 7),
      cos(22 / 7),
      0,
      0,
      0,
      0,
      1,
      0,
      0,
      0,
      0,
      1
    ]);
    final b = path_02.transform(rotateM);
    final c = b.transform(translateM);

    c.close();
    // path_02.close();

    Paint paint_2_fill = Paint()..style = PaintingStyle.fill;
    paint_2_fill.color = Colors.black.withOpacity(1.0);
    // TODO hide this when time is highest

    canvas.drawPath(c, paint_2_fill);

    // End of Trimmer Right Button
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
