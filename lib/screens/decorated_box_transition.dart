import 'package:flutter/material.dart';
import 'package:flutter_widgets/widgets/screen_container.dart';

class DecoratedBoxTransitionScreen extends StatefulWidget {
  DecoratedBoxTransitionScreen({Key key}) : super(key: key);

  @override
  _DecoratedBoxTransitionScreenState createState() => _DecoratedBoxTransitionScreenState();
}

class _DecoratedBoxTransitionScreenState extends State<DecoratedBoxTransitionScreen> with SingleTickerProviderStateMixin {

  AnimationController _controller;
  DecorationTween _tween = DecorationTween(
    begin: BoxDecoration(
      border: Border.all(color: Colors.blue, width: 20),
      borderRadius: BorderRadius.circular(40),
    ),
    end: BoxDecoration(
      border: Border.all(color: Colors.green, width: 40),
      borderRadius: BorderRadius.circular(20),
    )
  );

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
      title: 'DecoratedBoxTransition',
      body: DecoratedBoxTransition(
        child: Container(
          width: 200,
          height: 200,
          child: Center(child: Text('DecoratedBoxTransition'),),
        ),
        decoration: _tween.animate(_controller),
      ),
    );
  }
}