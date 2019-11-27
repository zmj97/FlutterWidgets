import 'package:flutter/material.dart';
import 'package:flutter_widgets/widgets/screen_container.dart';

class DropdownButtonScreen extends StatefulWidget {
  DropdownButtonScreen({Key key}) : super(key: key);

  @override
  _DropdownButtonScreenState createState() => _DropdownButtonScreenState();
}

class _DropdownButtonScreenState extends State<DropdownButtonScreen> {

  String _val = 'One';

  @override
  Widget build(BuildContext context) {
    return ScreenContainer(
      title: 'DropdownButton',
      body: DropdownButton(
        value: _val,
        icon: Icon(Icons.arrow_drop_down),
        iconSize: 24,
        elevation: 16,
        underline: Container(
          color: Theme.of(context).primaryColor,
          height: 2,
        ),
        items: <String>['One', 'Two', 'Three', 'Four'].map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(value),
          );
        }).toList(),
        onChanged: (newVal) {
          setState(() {
            _val = newVal;
          });
        },
      ),
    );
  }
}