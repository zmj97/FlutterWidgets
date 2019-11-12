import 'package:flutter/material.dart';
import 'package:flutter_widgets/widgets/color_block.dart';
import 'package:flutter_widgets/widgets/screen_container.dart';

class AlignScreen extends StatefulWidget {
  AlignScreen({Key key}) : super(key: key);

  @override
  _AlignScreenState createState() => _AlignScreenState();
}

class _AlignScreenState extends State<AlignScreen> {
  double _x = 0;
  double _y = 0;
  static const int FIX_BIT = 3;

  @override
  Widget build(BuildContext context) {
    return ScreenContainer(
      title: 'Align',
      body: Row(
        children: <Widget>[
          ColorBlock(
            hollow: true,
            // 使用ALign
            child: Align(
              alignment: Alignment(_x, _y),
              child: Text('Align的元素'),
            ),
          ),
          Expanded(child: Column(
            children: <Widget>[
              Text('x: ${_x.toStringAsFixed(FIX_BIT)}'),
              Slider(
                value: _x,
                min: -1,
                max: 1,
                onChanged: (double newValue) {
                  setState(() {
                    _x = newValue;
                  });
                },
              ),
              Text('y: ${_y.toStringAsFixed(FIX_BIT)}'),
              Slider(
                value: _y,
                min: -1,
                max: 1,
                onChanged: (double newValue) {
                  setState(() {
                    _y = newValue;
                  });
                },
              )
            ],
          ))
        ],
      ),
    );
  }
}