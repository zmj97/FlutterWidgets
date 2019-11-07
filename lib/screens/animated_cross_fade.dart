import 'package:flutter/material.dart';
import 'package:flutter_widgets/widgets/screen_container.dart';

class AnimatedCrossFadeScreen extends StatefulWidget {
  AnimatedCrossFadeScreen({Key key}) : super(key: key);

  @override
  _AnimatedCrossFadeScreenState createState() => _AnimatedCrossFadeScreenState();
}

class _AnimatedCrossFadeScreenState extends State<AnimatedCrossFadeScreen> {
  bool _showFirst = true;

  @override
  Widget build(BuildContext context) {
    return ScreenContainer(
      title: 'AnimatedCrossFade',
      body: GestureDetector(
        onTap: () {
          setState(() {
            _showFirst = !_showFirst;
          });
        },
        child: AnimatedCrossFade(
          duration: const Duration(milliseconds: 200),
          firstChild: const FlutterLogo(style: FlutterLogoStyle.stacked, size: 100.0),
          secondChild: FlutterLogo(style: FlutterLogoStyle.horizontal, size: 100.0),
          crossFadeState:  _showFirst ? CrossFadeState.showFirst : CrossFadeState.showSecond,
        ),
      ),
    );
  }
}