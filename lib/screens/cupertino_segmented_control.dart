import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_widgets/widgets/screen_container.dart';

class CupertinoSegmentedControlScreen extends StatefulWidget {
  CupertinoSegmentedControlScreen({Key key}) : super(key: key);

  @override
  _CupertinoSegmentedControlScreenState createState() => _CupertinoSegmentedControlScreenState();
}

class _CupertinoSegmentedControlScreenState extends State<CupertinoSegmentedControlScreen> {

  String _selectedKey = 'a';

  Widget _segmentWidget(String key) {
    return Container(
      width: 100,
      child: Center(child: Text(key),),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ScreenContainer(
      title: 'CupertinoSegmentedControl',
      body: Column(
        children: <Widget>[
          CupertinoSegmentedControl(
            children: {
              'a': _segmentWidget('a'),
              'b': _segmentWidget('b'),
              'c': _segmentWidget('c'),
            },
            onValueChanged: (newValue) {
              setState(() {
                _selectedKey = newValue;                
              });
            },
            groupValue: _selectedKey,
          ),
          Text('你选择了$_selectedKey')
        ],
      ),
    );
  }
}