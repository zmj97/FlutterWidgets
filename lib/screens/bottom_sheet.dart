import 'package:flutter/material.dart';
import 'package:flutter_widgets/widgets/screen_container.dart';

class BottomSheetScreen extends StatefulWidget {
  BottomSheetScreen({Key key}) : super(key: key);

  @override
  _BottomSheetScreenState createState() => _BottomSheetScreenState();
}

class _BottomSheetScreenState extends State<BottomSheetScreen> {

  bool _isOpened = false;
  PersistentBottomSheetController _controller;
  GlobalKey<ScaffoldState> _scaffordKey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {

    void _showBottomSheet() {
      _controller = _scaffordKey.currentState.showBottomSheet(
        (context) {
          return Container(
            height: 100,
            width: MediaQuery.of(context).size.width,
            child: Center(
              child: Text('This is the BottomSheet.'),
            ),
          );
        },
        elevation: 4,
      );
    }

    return ScreenContainer(
      title: 'BottomSheet',
      body: Container(
        height: 180,
        child: Scaffold(
          key: _scaffordKey,
          body: RaisedButton(
            child: Text(_isOpened ? '关闭BottomSheet' : '打开BottomSheet'),
            onPressed: () {
              if (_isOpened) {
                _controller.close();
              } else {
                _showBottomSheet();
              }
              setState(() {
                _isOpened = !_isOpened;
              });
            },
          )
        ),
      )
    );
  }
}