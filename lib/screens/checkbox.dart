import 'package:flutter/material.dart';
import 'package:flutter_widgets/widgets/screen_container.dart';

class CheckboxScreen extends StatefulWidget {
  CheckboxScreen({Key key}) : super(key: key);

  @override
  _CheckboxScreenState createState() => _CheckboxScreenState();
}

class _CheckboxScreenState extends State<CheckboxScreen> {

  bool _isChecked = true;

  void _changeCheckStatus() {
    setState(() {
      _isChecked = !_isChecked;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ScreenContainer(
      title: 'Checkbox',
      body: Row(
        children: <Widget>[
          Checkbox(
            value: _isChecked,
            onChanged: (newValue) {
              _changeCheckStatus();
            },
          ),
          GestureDetector(
            child: Text('Tomato'),
            onTap: _changeCheckStatus,
          )
        ],
      ),
    );
  }
}