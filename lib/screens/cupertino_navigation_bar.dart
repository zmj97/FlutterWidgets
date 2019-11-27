import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_widgets/widgets/screen_container.dart';

class CupertinoNavigationBarScreen extends StatefulWidget {
  CupertinoNavigationBarScreen({Key key}) : super(key: key);

  @override
  _CupertinoNavigationBarScreenState createState() => _CupertinoNavigationBarScreenState();
}

class _CupertinoNavigationBarScreenState extends State<CupertinoNavigationBarScreen> {
  @override
  Widget build(BuildContext context) {
    return ScreenContainer(
      title: 'CupertinoNavigationBar',
      body: Container(
        height: 300,
        child: CupertinoPageScaffold(
          navigationBar: CupertinoNavigationBar(
            middle: Text('标题'),
          ),
          child: Center(child: Text('body'),),
        ),
      ),
    );
  }
}