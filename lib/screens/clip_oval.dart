import 'package:flutter/material.dart';
import 'package:flutter_widgets/widgets/color_block.dart';
import 'package:flutter_widgets/widgets/screen_container.dart';

class ClipOvalScreen extends StatelessWidget {
  const ClipOvalScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenContainer(
      title: 'ClipOval',
      body: ClipOval(
        // ColorBlock为正方形色块
        child: ColorBlock(),
      ),
    );
  }
}