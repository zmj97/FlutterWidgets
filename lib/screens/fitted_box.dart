import 'package:flutter/material.dart';
import 'package:flutter_widgets/widgets/color_block.dart';
import 'package:flutter_widgets/widgets/screen_container.dart';

class FittedBoxScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenContainer(
      title: 'FittedBox',
      body: ColorBlock(
        hollow: true,
        child: FittedBox(
          fit: BoxFit.fill,
          child: Image.network('https://github.com/flutter/website/raw/master/src/images/homepage/reflectly-hero-600px.png'),
        ),
      ),
    );
  }
}