import 'package:flutter/material.dart';

class ColorBlock extends StatelessWidget {
  final double size;
  final double width;
  final double height;
  final Color color;
  final bool hollow; // 空心
  final Widget child;
  final String text;
  const ColorBlock({Key key, this.size = 200, this.width = 200, this.height = 200, this.color, this.hollow = false, this.child, this.text = ''}) : super(key: key);

  BoxDecoration _getDecoration(context) {
    Color decorationColor = Theme.of(context).primaryColor;
    if (color != null) {
      decorationColor = color;
    }
    if (hollow) {
      return BoxDecoration(border: Border.all(color: decorationColor, width: 5));
    } else {
      return BoxDecoration(color: decorationColor);
    }
  }

  Widget _getChild() {
    if (child != null) {
      return child;
    }
    if (hollow) {
      return Center(child: Text(text),);
    }
    return Center(child: Text(text, style: TextStyle(color: Colors.white)),);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width != 200 ? width : size,
      height: height != 200 ? height : size,
      decoration: _getDecoration(context),
      child: _getChild(),
    );
  }
}