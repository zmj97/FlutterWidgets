import 'package:flutter/material.dart';
import 'package:flutter_widgets/widgets/screen_container.dart';

class FloatingActionButtonScreen extends StatelessWidget {
  const FloatingActionButtonScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenContainer(
      title: 'FloatingActionButton',
      body: Container(
        height: 300,
        child: Scaffold(
          appBar: AppBar(title: Text('FloatingActionButton'),),
          floatingActionButton: FloatingActionButton(
            child: Icon(Icons.more),
            onPressed: () {},
          ),
          body: SingleChildScrollView(
            child: Text('some words ' * 100),
          ),
        ),
      ),
    );
  }
}