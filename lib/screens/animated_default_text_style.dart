import 'package:flutter/material.dart';
import 'package:flutter_widgets/widgets/screen_container.dart';

class AnimatedDefaultTextStyleScreen extends StatefulWidget {
  AnimatedDefaultTextStyleScreen({Key key}) : super(key: key);

  @override
  _AnimatedDefaultTextStyleScreenState createState() => _AnimatedDefaultTextStyleScreenState();
}

class _AnimatedDefaultTextStyleScreenState extends State<AnimatedDefaultTextStyleScreen> {
  static const List<TextStyle> styles = [
    TextStyle(
      color: Colors.purple,
      fontWeight: FontWeight.w100,
      fontSize: 30,
    ),
    TextStyle(
      color: Colors.blueAccent,
      fontWeight: FontWeight.w500,
      fontSize: 30,
    ),
    TextStyle(
      color: Colors.brown,
      fontWeight: FontWeight.w900,
      fontSize: 30,
    )
  ];

  int idx = 1;

  @override
  Widget build(BuildContext context) {
    return ScreenContainer(
      title: 'AnimatedDefaultTextStyle',
      body: Center(child: GestureDetector(
        onTap: () {
          setState(() {
            idx = (idx + 1) % 3;
          });
        },
        child: AnimatedDefaultTextStyle(
          style: styles[idx],
          child: Text('点击修改字体样式'),
          duration: const Duration(milliseconds: 500),
          curve: Curves.easeIn,
        ),
      ),),
    );
  }
}