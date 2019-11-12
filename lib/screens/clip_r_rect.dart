import 'package:flutter/material.dart';
import 'package:flutter_widgets/widgets/color_block.dart';
import 'package:flutter_widgets/widgets/screen_container.dart';

class ClipRRectScreen extends StatelessWidget {
  const ClipRRectScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenContainer(
      title: 'ClipRRect',
      body: ClipRRect(
        // colorblock => 正方形色块
        child: ColorBlock(),
        borderRadius: BorderRadius.circular(50),
      ),
    );
  }
}