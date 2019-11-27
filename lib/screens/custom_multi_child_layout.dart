import 'package:flutter/material.dart';
import 'package:flutter_widgets/widgets/color_block.dart';
import 'package:flutter_widgets/widgets/screen_container.dart';

const defaultId = 'defaultBlock';
const blackId = 'blackBlock';

class MyLayoutDelegate extends MultiChildLayoutDelegate {

  @override
  void performLayout(Size size) {
    layoutChild(defaultId, BoxConstraints(maxWidth: size.width / 2));
    positionChild(defaultId, Offset(10, 20));

    layoutChild(blackId, BoxConstraints(maxHeight: size.height / 5));
    positionChild(blackId, Offset(50, 50));
  }

  @override
  bool shouldRelayout(MultiChildLayoutDelegate oldDelegate) {
    return false;
  }
}

class CustomMultiChildLayoutScreen extends StatelessWidget {
  const CustomMultiChildLayoutScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenContainer(
      title: 'CustomMultiChildLayout',
      body: ColorBlock(
        size: 350,
        hollow: true,
        child: CustomMultiChildLayout(
          children: <Widget>[
            LayoutId(
              id: defaultId,
              child: ColorBlock(),
            ),
            LayoutId(
              id: blackId,
              child: ColorBlock(color: Colors.black,),
            )
          ],
          delegate: MyLayoutDelegate(),
        ),
      ),
    );
  }
}