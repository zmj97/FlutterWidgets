import 'package:flutter/material.dart';
import 'package:flutter_widgets/widgets/color_block.dart';
import 'package:flutter_widgets/widgets/screen_container.dart';

class RectClipper extends CustomClipper<Rect> {

  @override
  Rect getClip(Size size) {
    // Rect.fromLTRB(left, top, right, bottom)
    const double gap = 50;
    return Rect.fromLTRB(gap, gap, size.width - gap, size.height - gap);
  }

    @override
  bool shouldReclip(CustomClipper<Rect> oldClipper) {
    return true;
  }
}

class ClipRectScreen extends StatelessWidget {
  const ClipRectScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenContainer(
      title: 'ClipRect',
      body: ColorBlock(
        hollow: true,
        child: ClipRect(
          clipper: RectClipper(),
          child: FlutterLogo(size: 300,),
        ),
      ),
    );
  }
}