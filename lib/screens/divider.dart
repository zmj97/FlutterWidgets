import 'package:flutter/material.dart';
import 'package:flutter_widgets/widgets/screen_container.dart';

class DividerScreen extends StatelessWidget {
  const DividerScreen({Key key}) : super(key: key);

  final int count = 20;

  @override
  Widget build(BuildContext context) {
    return ScreenContainer(
      title: 'Divider',
      body: Container(
        height: 300,
        child: ListView.builder(
          itemCount: count,
          itemBuilder: (context, idx) {
            Widget item = ListTile(title: Text('Item $idx'));
            if (idx == count - 1) return item;
            return Column(
              children: <Widget>[
                item,
                Divider(
                  color: Colors.black.withOpacity(0.666),
                )
              ],
            );
          },
        ),
      ),
    );
  }
}