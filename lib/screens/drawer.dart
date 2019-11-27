import 'package:flutter/material.dart';
import 'package:flutter_widgets/widgets/screen_container.dart';

class DrawerScreen extends StatelessWidget {
  const DrawerScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenContainer(
      title: 'Drawer',
      body: Container(
        height: 300,
        child: Scaffold(
          appBar: AppBar(title: Text('click left button to open drawer'),),
          drawer: Drawer(
            child: Column(
              children: <Widget>[
                ClipOval(
                  child: Image.network('https://flutter.dev/images/widget-catalog/material-drawer.png', width: 50, height: 50,),
                ),
                Card(child: ListTile(title: Center(child: Text('zmj97'),),),),
              ],
            ),
          ),
        ),
      ),
    );
  }
}