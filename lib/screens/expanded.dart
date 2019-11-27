import 'package:flutter/material.dart';
import 'package:flutter_widgets/widgets/color_block.dart';
import 'package:flutter_widgets/widgets/screen_container.dart';

class ExpandedScreen extends StatelessWidget {
  const ExpandedScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenContainer(
      title: 'Expanded',
      body: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Container(
                color: Theme.of(context).primaryColor,
                child: Text('without expanded'),
              ),
              ColorBlock(size: 20, color: Colors.black,)
            ],
          ),
          Row(
            children: <Widget>[
              Expanded(
                child: Container(
                  color: Theme.of(context).primaryColor,
                  child: Text('with expanded'),
                ),
              ),
              ColorBlock(size: 20, color: Colors.black)
            ],
          )
        ],
      ),
    );
  }
}