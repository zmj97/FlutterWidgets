import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_widgets/widgets/screen_container.dart';

class CupertinoScrollbarScreen extends StatelessWidget {
  const CupertinoScrollbarScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenContainer(
      title: 'CupertinoScrollbar',
      body: Container(
        height: 300,
        child: CupertinoScrollbar(
          child: SingleChildScrollView(
            child: Text('some words ' * 500),
          ),
        )
      ),
    );
  }
}