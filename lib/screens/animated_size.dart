import 'package:flutter/material.dart';
import 'package:flutter_widgets/widgets/color_block.dart';
import 'package:flutter_widgets/widgets/screen_container.dart';

class AnimatedSizeScreen extends StatefulWidget {
  AnimatedSizeScreen({Key key}) : super(key: key);

  @override
  _AnimatedSizeScreenState createState() => _AnimatedSizeScreenState();
}

class _AnimatedSizeScreenState extends State<AnimatedSizeScreen> with SingleTickerProviderStateMixin {
  double _sideLength = 150;

  @override
  Widget build(BuildContext context) {
    return ScreenContainer(
      title: 'AnimatedSize',
      body: GestureDetector(
        onTap: () {
          setState(() {
            if (_sideLength + 100 > MediaQuery.of(context).size.width) {
              _sideLength = 150;
            } else {
            _sideLength += 10;
            }
          });
        },
        child: AnimatedSize(
          vsync: this,
          duration: const Duration(milliseconds: 500),
          child: ColorBlock(
            size: _sideLength,
            text: '点击查看修改大小动画',
          ),
        ),
      ),
    );
  }
}