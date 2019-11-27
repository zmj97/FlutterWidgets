import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_widgets/widgets/screen_container.dart';

class CupertinoSwitchScreen extends StatefulWidget {
  CupertinoSwitchScreen({Key key}) : super(key: key);

  @override
  _CupertinoSwitchScreenState createState() => _CupertinoSwitchScreenState();
}

class _CupertinoSwitchScreenState extends State<CupertinoSwitchScreen> {

  bool _val = false;

  @override
  Widget build(BuildContext context) {
    return ScreenContainer(
      title: 'CupertinoSwitch',
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          CupertinoSwitch(
            value: _val,
            onChanged: (newValue) => setState(() => _val = newValue),
          ),
          Text(_val.toString())
        ],
      ),
    );
  }
}