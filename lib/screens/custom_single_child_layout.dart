import 'package:flutter/material.dart';
import 'package:flutter_widgets/widgets/color_block.dart';
import 'package:flutter_widgets/widgets/screen_container.dart';

class MyDelegate extends SingleChildLayoutDelegate {

  @override
  BoxConstraints getConstraintsForChild(BoxConstraints constraints) {
    return BoxConstraints(maxHeight: 50);
  }

  @override
  Offset getPositionForChild(Size size, Size childSize) {
    return Offset(88, 11);
  }

  @override
  bool shouldRelayout(SingleChildLayoutDelegate oldDelegate) {
    return false;
  }
}

class CustomSingleChildLayoutScreen extends StatelessWidget {
  const CustomSingleChildLayoutScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenContainer(
      title: 'CustomSingleChildLayout',
      body: ColorBlock(
        hollow: true,
        child: CustomSingleChildLayout(
          child: ColorBlock(size: 50,),
          delegate: MyDelegate(),
        ),
      ),
    );
  }
}