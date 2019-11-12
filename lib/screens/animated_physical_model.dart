import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_widgets/widgets/color_block.dart';
import 'package:flutter_widgets/widgets/screen_container.dart';

class AnimatedPhysicalModelScreen extends StatefulWidget {
  AnimatedPhysicalModelScreen({Key key}) : super(key: key);

  @override
  _AnimatedPhysicalModelScreenState createState() => _AnimatedPhysicalModelScreenState();
}

class _AnimatedPhysicalModelScreenState extends State<AnimatedPhysicalModelScreen> {
  double _elevation = 20;


  @override
  Widget build(BuildContext context) {
    return ScreenContainer(
      title: 'AnimatedPhysicalModel',
      body: GestureDetector(
        onTap: () {
          setState(() {
            _elevation = (Random().nextDouble() + 0.1) * 50;
          });
        },
        child: AnimatedPhysicalModel(
          duration: const Duration(milliseconds: 500),
          elevation: _elevation,
          shape: BoxShape.rectangle,
          clipBehavior: Clip.antiAlias,
          shadowColor: Colors.black,
          color: Theme.of(context).primaryColor,
          borderRadius: BorderRadius.circular(_elevation),
          child: ColorBlock(
            text: '点击查看盒动画',
          ),
        ),
      ),
    );
  }
}