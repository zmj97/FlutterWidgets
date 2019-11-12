import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_widgets/widgets/screen_container.dart';

class CupertinoDatePickerScreen extends StatefulWidget {
  CupertinoDatePickerScreen({Key key}) : super(key: key);

  @override
  _CupertinoDatePickerScreenState createState() => _CupertinoDatePickerScreenState();
}

class _CupertinoDatePickerScreenState extends State<CupertinoDatePickerScreen> {

  DateTime _date;

  Future<void> _showDatePicker() async {
    showModalBottomSheet(
      context: context,
      builder: (context) {
        return CupertinoDatePicker(
          onDateTimeChanged: (DateTime newDate) {
            setState(() {
              _date = newDate;
            });
          },
        );
      }
    );
  }

  @override
  Widget build(BuildContext context) {
    return ScreenContainer(
      title: 'CupertinoDatePicker',
      body: Row(
        children: <Widget>[
          Expanded(child: Text(_date.toString())),
          CupertinoButton(
            child: Text('打开DatePicker'),
            onPressed: _showDatePicker,
          )
        ],
      ),
    );
  }
}