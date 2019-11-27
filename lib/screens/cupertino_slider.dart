import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_widgets/widgets/screen_container.dart';

class CupertinoSliderScreen extends StatefulWidget {
  CupertinoSliderScreen({Key key}) : super(key: key);

  @override
  _CupertinoSliderScreenState createState() => _CupertinoSliderScreenState();
}

class _CupertinoSliderScreenState extends State<CupertinoSliderScreen> {

  double _val = 50;

  @override
  Widget build(BuildContext context) {
    return ScreenContainer(
      title: 'CupertinoSlider',
      body: Column(
        children: <Widget>[
          CupertinoSlider(
            min: 0, max: 100,
            value: _val,
            onChanged: (newValue) {
              setState(() {
                _val = newValue;
              });
            },
          ),
          Center(child: Text(_val.toStringAsFixed(2))),
        ],
      ),
    );
  }
}