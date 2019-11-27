import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_widgets/widgets/color_block.dart';
import 'package:flutter_widgets/widgets/screen_container.dart';

class CupertinoPopupSurfaceScreen extends StatefulWidget {
  CupertinoPopupSurfaceScreen({Key key}) : super(key: key);

  @override
  _CupertinoPopupSurfaceScreenState createState() => _CupertinoPopupSurfaceScreenState();
}

class _CupertinoPopupSurfaceScreenState extends State<CupertinoPopupSurfaceScreen> {

  void _showPopup(bool isSurfacePainted) {
    showCupertinoDialog(
      context: context,
      builder: (context) {
        return GestureDetector(
          child: CupertinoPopupSurface(
            child: Center(child: ColorBlock()),
            isSurfacePainted: isSurfacePainted,
          ),
          onTap: () {
            Navigator.of(context).pop();
          },
        );
      }
    );
  }

  @override
  Widget build(BuildContext context) {
    return ScreenContainer(
      title: 'CupertinoPopupSurface',
      body: Column(
        children: <Widget>[
          CupertinoButton(
            child: Text('show CupertinoPopupSurface \n(surface painted)'),
            onPressed: () => _showPopup(true),
          ),
          CupertinoButton(
            child: Text('show CupertinoPopupSurface \n(surface not painted)'),
            onPressed: () => _showPopup(false),
          )
        ],
      ),
    );
  }
}