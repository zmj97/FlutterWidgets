import 'package:flutter/material.dart';
import 'package:flutter_widgets/widgets/screen_container.dart';

class AnimatedContainerScreen extends StatefulWidget {
  AnimatedContainerScreen({Key key}) : super(key: key);

  @override
  _AnimatedContainerScreenState createState() => _AnimatedContainerScreenState();
}

class _AnimatedContainerScreenState extends State<AnimatedContainerScreen> {
  bool selected = false;

  @override
  Widget build(BuildContext context) {
    return ScreenContainer(
      title: 'AnimatedContainer',
      body: GestureDetector(
        onTap: () {
          setState(() {
            selected = !selected;
          });
        },
        child: Center(
          child: AnimatedContainer(
            width: selected ? 200.0 : 150.0,
            height: selected ? 100.0 : 200.0,
            color: selected ? Colors.red : Colors.blue,
            alignment: selected ? Alignment.topLeft : Alignment.bottomRight,
            duration: Duration(milliseconds: 500),
            curve: Curves.fastOutSlowIn,
            child: Text('点击显示动画', style: TextStyle(color: Colors.white)),
          ),
        ),
      ),
    );
  }
}