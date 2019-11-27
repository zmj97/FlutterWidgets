import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_widgets/widgets/screen_container.dart';

class CupertinoTimerPickerScreen extends StatefulWidget {
  CupertinoTimerPickerScreen({Key key}) : super(key: key);

  @override
  _CupertinoTimerPickerScreenState createState() => _CupertinoTimerPickerScreenState();
}

class _CupertinoTimerPickerScreenState extends State<CupertinoTimerPickerScreen> {

  Duration _time;

  void _showTimerPicker() {
    showCupertinoModalPopup(
      context: context,
      builder: (context) {
        // CupertinoTimerPicker没有material包裹
        // 所以若不加Material会出现文字大小不对，底部有红线的情况
        return Material(
          child: Container(
          height: 300,
            child: CupertinoTimerPicker(
              onTimerDurationChanged: (duration) {
                setState(() {
                  _time = duration;
                });
              },
            ),
          ),
        );
      }
    );
  }

  @override
  Widget build(BuildContext context) {
    return ScreenContainer(
      title: 'CupertinoTimerPicker',
      body: Column(
        children: <Widget>[
          CupertinoButton(
            child: Text('show CupertinoTimerPicker'),
            onPressed: _showTimerPicker,
          ),
          Text('You picked $_time')
        ],
      ),
    );
  }
}