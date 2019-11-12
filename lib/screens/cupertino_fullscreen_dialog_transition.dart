import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_widgets/widgets/color_block.dart';
import 'package:flutter_widgets/widgets/screen_container.dart';

class CupertinoFullscreenDialogTransitionScreen extends StatefulWidget {
  CupertinoFullscreenDialogTransitionScreen({Key key}) : super(key: key);

  @override
  _CupertinoFullscreenDialogTransitionScreenState createState() => _CupertinoFullscreenDialogTransitionScreenState();
}

class _CupertinoFullscreenDialogTransitionScreenState extends State<CupertinoFullscreenDialogTransitionScreen> with SingleTickerProviderStateMixin {

  AnimationController _animationController;
  Tween<double> _doubleTween = new Tween<double>(begin: 1, end: 0);

  @override
  void initState() {
    super.initState();
    _animationController = new AnimationController(
      duration: const Duration(milliseconds: 600),
      vsync: this
    );
  }

  @override
  Widget build(BuildContext context) {
    return ScreenContainer(
      title: 'CupertinoFullscreenDialogTransition',
      body: CupertinoButton(
        child: Text('打开 dialog'),
        onPressed: () {
          showCupertinoModalPopup(
            context: context,
            builder: (context) {
              return CupertinoFullscreenDialogTransition(
                child: Center(child: ColorBlock(),),
                animation: _animationController.drive(_doubleTween),
              );
            }
          );
        },
      ),
    );
  }
}
