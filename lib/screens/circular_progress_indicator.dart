import 'package:flutter/material.dart';
import 'package:flutter_widgets/widgets/screen_container.dart';

class CircularProgressIndicatorScreen extends StatelessWidget {
  const CircularProgressIndicatorScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenContainer(
      title: 'CircularProgressIndicator',
      body: CircularProgressIndicator(),
    );
  }
}