import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_widgets/widgets/screen_container.dart';

class CupertinoPickerScreen extends StatefulWidget {
  CupertinoPickerScreen({Key key}) : super(key: key);

  @override
  _CupertinoPickerScreenState createState() => _CupertinoPickerScreenState();
}

class _CupertinoPickerScreenState extends State<CupertinoPickerScreen> {

  void _showPicker() {
    showCupertinoModalPopup(
      context: context,
      builder: (context) {
        return Container(
          height: 400,
          child: CupertinoPicker(
            onSelectedItemChanged: (idx) {
              print('select $idx');
            },
            useMagnifier: true,
            magnification: 1.5,
            itemExtent: 40,
            children: new List<Widget>.generate(20, (i) => Center(child: Text(i.toString()))).toList(),
          ),
        );
      }
    );
  }

  @override
  Widget build(BuildContext context) {
    return ScreenContainer(
      title: 'CupertinoPicker',
      body: CupertinoButton(
        child: Text('open picker'),
        onPressed: _showPicker,
      ),
    );
  }
}
