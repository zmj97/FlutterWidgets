import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_widgets/widgets/screen_container.dart';

class CupertinoActionSheetScreen extends StatefulWidget {
  CupertinoActionSheetScreen({Key key}) : super(key: key);

  @override
  _CupertinoActionSheetScreenState createState() => _CupertinoActionSheetScreenState();
}

class _CupertinoActionSheetScreenState extends State<CupertinoActionSheetScreen> {

  void _hideActionSheet() {
    Navigator.of(context).pop();
  }

  Future<void> _showCupertinoActionSheet(context) async {
      showCupertinoModalPopup(
        context: context,
        builder: (context) {
          return CupertinoActionSheet(
            title: Text('Favorite Dessert'),
            message: Text('Please slect the best dessert from rge options below'),
            actions: <Widget>[
              CupertinoActionSheetAction(
                child: Text('Profiteroles'),
                onPressed: _hideActionSheet,
              ),
              CupertinoActionSheetAction(
                child: Text('Cannolis'),
                onPressed: _hideActionSheet,
              ),
              CupertinoActionSheetAction(
                child: Text('Trifle'),
                onPressed: _hideActionSheet,
              ),
            ],
            cancelButton: CupertinoActionSheetAction(
              isDefaultAction: true,
              child: Text('Cancel'),
              onPressed: _hideActionSheet,
            ),
          );
        }
      );
  }

  @override
  Widget build(BuildContext context) {
    return ScreenContainer(
      title: 'CupertinoActionSheet',
      body: RaisedButton(
        child: Text('显示'),
        onPressed: () => _showCupertinoActionSheet(context),
      ),
    );
  }
}