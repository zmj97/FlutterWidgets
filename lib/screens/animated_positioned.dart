import 'package:flutter/material.dart';
import 'package:flutter_widgets/widgets/color_block.dart';
import 'package:flutter_widgets/widgets/screen_container.dart';

class AnimatedPositionedScreen extends StatefulWidget {
  AnimatedPositionedScreen({Key key}) : super(key: key);

  @override
  _AnimatedPositionedScreenState createState() => _AnimatedPositionedScreenState();
}

class _AnimatedPositionedScreenState extends State<AnimatedPositionedScreen> {
  bool _isLeftTop = true;

  @override
  Widget build(BuildContext context) {
    return ScreenContainer(
      title: 'AnimatedPositioned',
      body: GestureDetector(
        onTap: () {
          setState(() {
            _isLeftTop = !_isLeftTop;
          });
        },
        child: Stack(
          children: <Widget>[
            ColorBlock(),
            AnimatedPositioned(
              duration: const Duration(seconds: 1),
              child: Text('点此查看定位动画'),
              left: _isLeftTop ? 10 : 80,
              top: _isLeftTop ? 10 : 170,
            ),
          ],
        ),
      ),
    );
  }
}