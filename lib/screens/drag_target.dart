import 'package:flutter/material.dart';
import 'package:flutter_widgets/widgets/color_block.dart';
import 'package:flutter_widgets/widgets/screen_container.dart';

class DragTargetScreen extends StatefulWidget {
  DragTargetScreen({Key key}) : super(key: key);

  @override
  _DragTargetScreenState createState() => _DragTargetScreenState();
}

class _DragTargetScreenState extends State<DragTargetScreen> {

  final double _blockSize = 150;
  int _acceptedCount = 0;

  @override
  Widget build(BuildContext context) {
    return ScreenContainer(
      title: 'DragTarget',
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Draggable(
            child: ColorBlock(text: 'drag me!', size: _blockSize,),
            feedback: Material(child: ColorBlock(text: 'drag me!', size: _blockSize),),
          ),
          DragTarget(
            builder: (context, list1, list2) {
              return ColorBlock(
                hollow: _acceptedCount == 0,
                size: _blockSize,
                text: 'accepted $_acceptedCount times.',
              );
            },
            onAccept: (data) {
              setState(() {
                _acceptedCount++;
              });
            },
          )
        ],
      ),
    );
  }
}