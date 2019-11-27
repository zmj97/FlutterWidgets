import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_widgets/widgets/screen_container.dart';

class CupertinoTabScaffoldScreen extends StatelessWidget {
  const CupertinoTabScaffoldScreen({Key key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    List<String> tabNames = ['home', 'movie', 'person'];
    Map<String, Icon> icons = {
      'home': Icon(Icons.home),
      'movie': Icon(Icons.movie),
      'person': Icon(Icons.person),
    };

    return ScreenContainer(
      title: 'CupertinoTabScaffold',
      body: Container(
        height: 300,
        child: CupertinoTabScaffold(
          tabBar: CupertinoTabBar(
            items: tabNames.map<BottomNavigationBarItem>((item) {
              return BottomNavigationBarItem(
                title: Text(item),
                icon: icons[item]
              );
            }).toList(),
          ),
          tabBuilder: (context, idx) {
            return CupertinoTabView(
              builder: (context) {
                return CupertinoPageScaffold(
                  navigationBar: CupertinoNavigationBar(
                    middle: Text(tabNames[idx]),
                  ),
                  child: Center(child: Text(tabNames[idx]),),
                );
              },
            );
          },
        ),
      ),
    );
  }
}