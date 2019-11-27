import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_widgets/widgets/screen_container.dart';

class CupertinoTextFieldScreen extends StatefulWidget {
  CupertinoTextFieldScreen({Key key}) : super(key: key);

  @override
  _CupertinoTextFieldScreenState createState() => _CupertinoTextFieldScreenState();
}

class _CupertinoTextFieldScreenState extends State<CupertinoTextFieldScreen> {

  String _name = '';

  @override
  Widget build(BuildContext context) {
    return ScreenContainer(
      title: 'CupertinoTextField',
      body: Column(
        children: <Widget>[
          Text('Your name is $_name'),
          CupertinoTextField(
            placeholder: 'Input your name here.',
            onSubmitted: (value) {
              setState(() {
                _name = value;
              });
            },
            decoration: BoxDecoration(
              border: Border.all(color: Theme.of(context).primaryColor),
              borderRadius: BorderRadius.circular(15)
            ),
            padding: EdgeInsets.only(left: 10, top: 5, right: 10, bottom: 5),
          )
        ],
      ),
    );
  }
}