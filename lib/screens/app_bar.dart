import 'package:flutter/material.dart';
import 'package:flutter_widgets/widgets/screen_container.dart';

class AppBarScreen extends StatelessWidget {
  const AppBarScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenContainer(
      title: 'AppBar',
      body: Container(
        height: 300,
        child: Scaffold(
          backgroundColor: const Color(0x33000000),
          appBar: AppBar(
            leading: FlutterLogo(),
            title: Text('AppBar的标题', style: TextStyle(color: Colors.white),),
            backgroundColor: const Color(0xcc000000),
            actions: <Widget>[
              FlatButton(
                child: Text('返回', style: TextStyle(color: Colors.white)),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              )
            ],
          ),
          body: Center(child: Text('这里是body'),),
        ),
      ),
    );
  }
}