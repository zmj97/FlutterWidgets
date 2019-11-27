import 'package:flutter/material.dart';
import 'package:flutter_widgets/widgets/color_block.dart';
import 'package:flutter_widgets/widgets/screen_container.dart';

class DecoratedBoxScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenContainer(
      title: 'DecoratedBox',
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          DecoratedBox(
            child: ColorBlock(size: 100, hollow: true, text: 'foreground',),
            decoration: BoxDecoration(border: Border.all(color: Colors.black)),
            position: DecorationPosition.foreground,
          ),
          DecoratedBox(
            child: ColorBlock(size: 100, hollow: true, text: 'background',),
            decoration: BoxDecoration(border: Border.all(color: Colors.black, width: 10)),
            position: DecorationPosition.background,
          )
        ],
      ),
    );
  }
}