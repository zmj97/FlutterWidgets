import 'package:flutter/material.dart';
import 'package:flutter_widgets/widgets/screen_container.dart';

class CenterScreen extends StatelessWidget {
  const CenterScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenContainer(
      title: 'Center',
      body: Container(
        height: 200,
        child: Center(
          child: Text('Center'),
        ),
      ),
    );
  }
}