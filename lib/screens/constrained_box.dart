import 'package:flutter/material.dart';
import 'package:flutter_widgets/widgets/color_block.dart';
import 'package:flutter_widgets/widgets/screen_container.dart';

class ConstrainedBoxScreen extends StatefulWidget {
  ConstrainedBoxScreen({Key key}) : super(key: key);

  @override
  _ConstrainedBoxScreenState createState() => _ConstrainedBoxScreenState();
}

class _ConstrainedBoxScreenState extends State<ConstrainedBoxScreen> {

  double _sideLength = 150;
  @override
  Widget build(BuildContext context) {
    return ScreenContainer(
      title: 'ConstrainedBox',
      body: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Expanded(child: Slider(
                min: 0,
                max: 300,
                value: _sideLength,
                onChanged: (newValue) {
                  setState(() {
                    _sideLength = newValue;
                  });
                },
              )),
              Text(_sideLength.toStringAsFixed(2))
            ],
          ),
          ConstrainedBox(
            constraints: BoxConstraints(
              minWidth: 100,
              minHeight: 100,
              maxWidth: 200,
              maxHeight: 200
            ),
            child: ColorBlock(size: _sideLength, text: 'min: 100, height: 200',),
          )
        ],
      ),
    );
  }
}