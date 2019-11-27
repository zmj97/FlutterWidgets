import 'package:flutter/material.dart';
import 'package:flutter_widgets/widgets/color_block.dart';
import 'package:flutter_widgets/widgets/screen_container.dart';

class FadeTransitionScreen extends StatefulWidget {
  FadeTransitionScreen({Key key}) : super(key: key);

  @override
  _FadeTransitionScreenState createState() => _FadeTransitionScreenState();
}

class _FadeTransitionScreenState extends State<FadeTransitionScreen> with SingleTickerProviderStateMixin {

  AnimationController _controller;
  Tween<double> _tween = new Tween<double>(begin: 0.2, end: 1);

  @override
  void initState() {
    super.initState();
    _controller = new AnimationController(
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
      title: 'FadeTransitionScreen',
      body: FadeTransition(
        opacity: _tween.animate(_controller),
        child: ColorBlock(),
      ),
    );
  }
}