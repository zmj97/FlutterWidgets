import 'package:flutter/material.dart';
import 'package:flutter_widgets/widgets/color_block.dart';
import 'package:flutter_widgets/widgets/screen_container.dart';

class MPainter extends CustomPainter {
  final double value;

  MPainter(this.value);

  @override
  void paint(Canvas canvas, Size size) {
    final double width = size.width;
    final double height = size.height;

    final paint = Paint()
      ..isAntiAlias = true
      ..style = PaintingStyle.stroke
      ..strokeWidth = 10
      ..color = Colors.black.withOpacity(0.8);
    
    Path path = new Path();
    path.moveTo(0, height - 20);

    for (double i = 0; i < 190; i++) {
      if (i * 0.8 > value * width) {
        canvas.drawPath(path, paint);
        return;
      }
      if (i < 80) {
        path.lineTo(i, height - ((i - 20) * (i - 20) / 20));
      } else if (i < width / 2) {
        path.lineTo(i, height / 20 * (i - width / 2) + height);
      } else if (i < width * 3 / 4) {
        path.lineTo(i, (10 - height) * 4 / width * (i - width * 3 / 4) + 10);
      } else {
        path.lineTo(i, (height - 10) * 4 / width * (i - width) + height);
      }
    }

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(MPainter oldDelegate) {
    return (value * 100).toInt() % 2 == 0;
  }
}

class CustomPaintScreen extends StatefulWidget {
  CustomPaintScreen({Key key}) : super(key: key);

  @override
  _CustomPaintScreenState createState() => _CustomPaintScreenState();
}

class _CustomPaintScreenState extends State<CustomPaintScreen> with SingleTickerProviderStateMixin {

  AnimationController _controller;

  @override
  void initState() { 
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 3)
    )..repeat();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ScreenContainer(
      title: 'CustomPaint',
      body: ColorBlock(
        hollow: true,
        child: AnimatedBuilder(
          animation: _controller,
          builder: (context, child) {
            return CustomPaint(
              size: Size(200, 200),
              painter: MPainter(_controller.value),
            );
          },
        )
        
      ),
    );
  }
}