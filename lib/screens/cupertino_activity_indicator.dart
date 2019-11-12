import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_widgets/widgets/screen_container.dart';

class CupertinoActivityIndicatorScreen extends StatelessWidget {
  const CupertinoActivityIndicatorScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenContainer(
      title: 'CupertinoActivityIndicator',
      body: CupertinoActivityIndicator(),
    );
  }
}