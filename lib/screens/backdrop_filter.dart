import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_widgets/widgets/color_block.dart';
import 'package:flutter_widgets/widgets/screen_container.dart';

class BackdropFilterScreen extends StatelessWidget {
  const BackdropFilterScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenContainer(
      title: 'BackdropFilter',
      body: Container(
        height: 300,
        child: Stack(
          children: <Widget>[
            Container(child: Text('⭕️ ' * 10000)),
            Center(
              child: ClipRect(  // <-- 剪切下边， 否则滤镜直接扩展为整个Stack大小
                child: BackdropFilter(
                  filter: ImageFilter.blur(
                    sigmaX: 5.0,
                    sigmaY: 5.0,
                  ),
                  child: ColorBlock(text: 'Hello Flutter', color: Colors.black.withOpacity(0),)
                ),
              ),
            ),
          ],
        ),
      )
    );
  }
}