import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_widgets/widgets/screen_container.dart';

class DraggableScreen extends StatefulWidget {
  DraggableScreen({Key key}) : super(key: key);

  @override
  _DraggableScreenState createState() => _DraggableScreenState();
}

class _DraggableScreenState extends State<DraggableScreen> {

  final List<String> strList = new List.generate(4, (i) => 'Item $i --- try to drag me');

  GlobalKey _key = new GlobalKey();

  String _draggingStr = '';

  @override
  Widget build(BuildContext context) {
    final double itemWidth = MediaQuery.of(context).size.width - 30;
    final double itemheight = 60;
    return ScreenContainer(
      title: 'Draggable',
      body: Container(
        key: _key,
        height: 300,
        child: ListView.builder(
          itemCount: strList.length,
          itemBuilder: (context, idx) {
            final Widget item = Container(
              width: itemWidth,
              height: itemheight,
              child: Card(child: Center(child: Text(strList[idx]),),)
            );
            final String itemStr = strList[idx];
            return Draggable(
              key: Key(idx.toString()),
              data: itemStr,
              child: item,
              feedback: item,
              onDragStarted: () {
                _draggingStr = itemStr;
                setState(() {
                  strList.removeAt(idx);
                });
              },
              onDraggableCanceled: (velocity, Offset offset) {
                // List offset of the screen
                final double offsetY = _key.currentContext.findRenderObject().getTransformTo(null)?.getTranslation()[1];
                // where to insert
                final int newIdx = min(((offset.dy - offsetY) / itemheight + 0.8).toInt(), strList.length);
                setState(() {
                  strList.insert(newIdx, _draggingStr);
                });
              },
            );
          },
        ),
      ),
    );
  }
}