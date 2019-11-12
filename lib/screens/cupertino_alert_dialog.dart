import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_widgets/widgets/screen_container.dart';

class CupertinoAlertDialogScreen extends StatelessWidget {
  const CupertinoAlertDialogScreen({Key key}) : super(key: key);

  void _hideAlert(context) {
    Navigator.of(context).pop();
  }

  void _showAlert(context) {
    showDialog(
      context: context,
      builder: (context) {
        return CupertinoAlertDialog(
          title: Text('标题'),
          content: Text('一段内容'),
          actions: <Widget>[
            CupertinoDialogAction(
              child: Text('好的'),
              onPressed: () => _hideAlert(context),
            ),
            CupertinoDialogAction(
              child: Text('取消'),
              onPressed: () => _hideAlert(context),
            )
          ],
        );
      }
    );
  }

  @override
  Widget build(BuildContext context) {
    return ScreenContainer(
      title: 'CupertinoAlertDialog',
      body: CupertinoButton(
        color: Theme.of(context).primaryColor,
        child: Text('打开CupertinoAlertDialog', style: TextStyle(color: Colors.white),),
        onPressed: () => _showAlert(context),
      ),
    );
  }
}