import 'package:flutter/material.dart';
import 'package:flutter_widgets/widgets/screen_container.dart';

class AnimatedModalBarrierScreen extends StatefulWidget {
  AnimatedModalBarrierScreen({Key key}) : super(key: key);

  @override
  _AnimatedModalBarrierScreenState createState() => _AnimatedModalBarrierScreenState();
}

class _AnimatedModalBarrierScreenState extends State<AnimatedModalBarrierScreen> with SingleTickerProviderStateMixin {

  AnimationController _animationController;
  Tween<Color> _colorTween = new Tween<Color>(begin: Colors.white, end: Colors.orange);
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
        Container(
          width: 300,
          height: 300,
          decoration: BoxDecoration(border: Border.all(color: Colors.orange, width: 5)),
          child: AnimatedModalBarrier(
            color: _colorAnimation,
            dismissible: _dismissible,
          )
        )
      ])
    );
  }
}