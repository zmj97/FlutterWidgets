import 'package:flutter/material.dart';
import 'dart:math' as math;

import 'package:flutter_widgets/widgets/screen_container.dart';

class AnimatedBuilderScreen extends StatefulWidget {
  AnimatedBuilderScreen({Key key}) : super(key: key);

  @override
  _AnimatedBuilderScreenState createState() => _AnimatedBuilderScreenState();
}

class _AnimatedBuilderScreenState extends State<AnimatedBuilderScreen> with SingleTickerProviderStateMixin {
  AnimationController _controller;

  @override
  void initState() {
    super.initState();
    // _controller.value每10s从0逐渐变到1
    _controller = AnimationController(
      duration: const Duration(seconds: 10),
      vsync: this,
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
      title: 'AnimatedBuilder',
      body: AnimatedBuilder(
        animation: _controller,
        child: Container(width: 200.0, height: 200.0, color: Colors.green),
        builder: (BuildContext context, Widget child) {
          return Transform.rotate(
            // 2pi = 360°
            angle: _controller.value * 2.0 * math.pi,
            child: Transform.scale(
              scale: (_controller.value - 0.5).abs() + 0.5,
              child: child,
            ),
          );
        },
      ),
    );
  }
}