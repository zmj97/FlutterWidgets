import 'package:flutter/material.dart';
import 'package:flutter_widgets/widgets/screen_container.dart';

class BottonBarScreen extends StatelessWidget {
  const BottonBarScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenContainer(
      title: 'ButtonBar',
      body: ButtonBar(
        children: <Widget>[
          RaisedButton(
            child: Text('Button0'),
            onPressed: () {},
          ),
          RaisedButton(
            child: Text('Button1'),
            onPressed: () {},
          ),
          RaisedButton(
            child: Text('Button2'),
            onPressed: () {},
          )
        ],
        alignment: MainAxisAlignment.spaceEvenly,
      ),
    );
  }
}