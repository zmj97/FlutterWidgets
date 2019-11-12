import 'package:flutter/material.dart';

class CodeBlock extends StatelessWidget {
  final String code;
  const CodeBlock({Key key, this.code}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Text(code, style: TextStyle(color: Colors.white)),
        ),
      ),
      decoration: BoxDecoration(color: Colors.black87, borderRadius: BorderRadius.circular(12)),
      padding: EdgeInsets.all(12),
      margin: EdgeInsets.only(top: 12, bottom: 12),
    );
  }
}