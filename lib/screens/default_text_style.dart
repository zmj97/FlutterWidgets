import 'package:flutter/material.dart';
import 'package:flutter_widgets/widgets/screen_container.dart';

class DefaultTextStyleScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenContainer(
      title: 'DefaultTextStyle',
      body: DefaultTextStyle(
        style: TextStyle(
          color: Theme.of(context).primaryColor,
          fontSize: 22,
          fontWeight: FontWeight.w900,
          height: 3
        ),
        child: Column(
          children: <Widget>[
            Text('First line with default text style.'),
            Text('Second line with default text style.'),
            Text(
              'Third line with personal text style.',
              style: TextStyle(
                color: Colors.greenAccent,
                fontSize: 18,
                fontWeight: FontWeight.w300,
                height: 1.2
              ),
            ),
          ],
        ),
      ),
    );
  }
}