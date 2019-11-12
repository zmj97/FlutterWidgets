import 'package:flutter/material.dart';
import 'package:flutter_widgets/widgets/color_block.dart';
import 'package:flutter_widgets/widgets/screen_container.dart';

class AnimatedModalBarrierScreen extends StatefulWidget {
  AnimatedModalBarrierScreen({Key key}) : super(key: key);

  @override
  _AnimatedModalBarrierScreenState createState() => _AnimatedModalBarrierScreenState();
}

class _AnimatedModalBarrierScreenState extends State<AnimatedModalBarrierScreen> with SingleTickerProviderStateMixin {

  AnimationController _animationController;
  Tween<Color> _colorTween;
  Animation<Color> _colorAnimation;
  bool _dismissible = true;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 500)
    );
    _colorAnimation = _animationController.drive(_colorTween);
  }

  @override
  Widget build(BuildContext context) {
    _colorTween = Tween<Color>(begin: Colors.white, end: Theme.of(context).primaryColor);
    return ScreenContainer(
      title: 'AnimatedModalBarrier',
      body: Column(children: <Widget>[
        FlatButton(
          child: Text('点次修改dismissible: $_dismissible, 并尝试点击下方矩形'),
          onPressed: () {
            setState(() {
              _dismissible = !_dismissible;
            });
          },
        ),
        ColorBlock(
          size: 300,
          hollow: true,
          child: AnimatedModalBarrier(
            color: _colorAnimation,
            dismissible: _dismissible,
          )
        )
      ])
    );
  }
}