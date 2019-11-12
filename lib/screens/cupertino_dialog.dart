import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_widgets/widgets/color_block.dart';
import 'package:flutter_widgets/widgets/screen_container.dart';

class CupertinoDialogScreen extends StatelessWidget {
  const CupertinoDialogScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenContainer(
      title: 'CupertinoDialog',
      body: CupertinoButton(
        child: Text('打开 dialog'),
        onPressed: () {
          showCupertinoModalPopup(
            context: context,
            builder: (context) {
              return CupertinoDialog(
                child: ColorBlock(),
              );
            }
          );
        },
      ),
    );
  }
}