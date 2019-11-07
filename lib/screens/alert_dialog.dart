import 'package:flutter/material.dart';
import 'package:flutter_widgets/widgets/screen_container.dart';

class AlertDialogScreen extends StatefulWidget {
  AlertDialogScreen({Key key}) : super(key: key);

  @override
  _AlertDialogScreenState createState() => _AlertDialogScreenState();
}

class _AlertDialogScreenState extends State<AlertDialogScreen> {
  int _count = 0;

  @override
  Widget build(BuildContext context) {
    return ScreenContainer(
      title: 'AlertDialog',
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          RaisedButton(
            child: Text('点击增加count'),
            onPressed: () {
              showDialog(
                context: context,
                child: new AlertDialog(
                  title: Text('确认增加count?'),
                  content: Text('确认后count将: $_count => ${_count + 1}'),
                  actions: <Widget>[
                    FlatButton(
                      child: Text('取消'),
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                    ),
                    FlatButton(
                      child: Text('确定'),
                      onPressed: () {
                        setState(() {
                          _count++;
                        });
                        Navigator.of(context).pop();
                      },
                    )
                  ],
                ),
              );
            },
          ),
          Text('count: $_count')
        ],
      ),
    );
  }
}