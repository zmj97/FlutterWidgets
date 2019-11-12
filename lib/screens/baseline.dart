import 'package:flutter/material.dart';
import 'package:flutter_widgets/widgets/color_block.dart';
import 'package:flutter_widgets/widgets/screen_container.dart';

class BaselineScreen extends StatefulWidget {
  @override
  _BaselineScreenState createState() => _BaselineScreenState();
}

class _BaselineScreenState extends State<BaselineScreen> {
  double _baseline = 0;
  @override
  Widget build(BuildContext context) {
    return ScreenContainer(
      title: 'Baseline',
      body: Column(
        children: <Widget>[
          ColorBlock(
            child: Baseline(
              child: ColorBlock(
                color: Colors.green,
                child: Center(
                  child: Text('子元素', style: TextStyle(decoration: TextDecoration.underline)),
                ),
                size: 50
              ),
              baseline: _baseline,
              baselineType: TextBaseline.alphabetic,
            ),
          ),
          Row(
            children: <Widget>[
              Text('修改baseline:'),
              Expanded(child: Slider(
                min: 0,
                max: 200,
                value: _baseline,
                onChanged: (double newValue) {
                  setState(() {
                    _baseline = newValue;
                  });
                },
              ),),
              Text(_baseline.toStringAsFixed(2))
            ],
          ),
          Text('大块边长200，小块边长150')
        ],
      ),
    );
  }
}