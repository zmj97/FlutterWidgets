import 'package:flutter/material.dart';
import 'package:flutter_widgets/widgets/screen_container.dart';

class ChipScreen extends StatelessWidget {
  const ChipScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenContainer(
      title: 'Chip',
      body: Chip(
        avatar: CircleAvatar(
          backgroundColor: Theme.of(context).primaryColor,
          child: Text('T'),
        ),
        label: Text('Tomato'),
      ),
    );
  }
}