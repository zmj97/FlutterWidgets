import 'package:flutter/material.dart';
import 'package:flutter_widgets/widgets/color_block.dart';
import 'package:flutter_widgets/widgets/screen_container.dart';

class AspectRatioScreen extends StatelessWidget {
  const AspectRatioScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenContainer(
      title: 'AspectRatio',
      body: Container(
        height: 200,
        child: AspectRatio(
          aspectRatio: 16/9,
          child: ColorBlock(text: '16:9',),
        ),
      )
    );
  }
}