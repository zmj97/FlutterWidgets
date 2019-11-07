import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_widgets/widgets/screen_container.dart';

class AnimatedOpacityScreen extends StatefulWidget {
  AnimatedOpacityScreen({Key key}) : super(key: key);

  @override
  _AnimatedOpacityScreenState createState() => _AnimatedOpacityScreenState();
}

class _AnimatedOpacityScreenState extends State<AnimatedOpacityScreen> {
  double _opacityLevel = 1.0;

  @override
  Widget build(BuildContext context) {
    return ScreenContainer(
      title: 'AnimatedOpacity',
      body: Column(children: <Widget>[
        AnimatedOpacity(
          opacity: _opacityLevel,
          duration: const Duration(milliseconds: 800),
          child: Container(
            width: 200,
            height: 200,
            decoration: BoxDecoration(color: Colors.orange),
          ),
        ),
        FlatButton(
          child: Text('点此修改透明度'),
          onPressed: () {
            setState(() {
              _opacityLevel = Random().nextDouble();
            });
          },
        )
      ],),
    );
  }
}