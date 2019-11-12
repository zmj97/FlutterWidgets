import 'package:flutter/material.dart';
import 'package:flutter_widgets/widgets/screen_container.dart';

class BotttomNavigationBarScreen extends StatefulWidget {
  BotttomNavigationBarScreen({Key key}) : super(key: key);

  @override
  _BotttomNavigationBarScreenState createState() => _BotttomNavigationBarScreenState();
}

class _BotttomNavigationBarScreenState extends State<BotttomNavigationBarScreen> {
  int _idx = 0;
  List<String> texts = [
    '主页',
    '电影',
    '音乐',
    '我的'
  ];

  @override
  Widget build(BuildContext context) {
    return ScreenContainer(
      title: 'BottomNavigationBar',
      body: Container(
        height: 300,
        child: Scaffold(
          backgroundColor: Theme.of(context).primaryColor.withOpacity(0.1),
          body: Center(child: Text(texts[_idx]),),
          // 因为safe area会导致在iphone X下边看起来多了padding
          bottomNavigationBar:  BottomNavigationBar(
            items: <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                title: Text('Home'),
                icon: Icon(Icons.home)
              ),
              BottomNavigationBarItem(
                title: Text('Movie'),
                icon: Icon(Icons.movie)
              ),
              BottomNavigationBarItem(
                title: Text('Music'),
                icon: Icon(Icons.music_note)
              ),
              BottomNavigationBarItem(
                title: Text('Person'),
                icon: Icon(Icons.person)
              )
            ],
            selectedItemColor: Theme.of(context).primaryColor,
            unselectedItemColor: Colors.black.withOpacity(0.1),
            onTap: (index) => setState(() => _idx = index),
            currentIndex: _idx,
            type: BottomNavigationBarType.fixed,
          ),
        ),
      ),
    );
  }
}