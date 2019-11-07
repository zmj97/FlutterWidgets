import 'package:flutter/material.dart';
import 'package:flutter_widgets/widgets/screen_container.dart';
import 'package:recase/recase.dart';

class Home extends StatelessWidget {
  const Home({Key key}) : super(key: key);

  static const List<Map> _widgetsData = [
    {
      'title': 'AbsorbPointer',
      'subtitle': '阻止点击事件',
    },
    {
      'title': 'AlertDialog',
      'subtitle': '弹窗',
      'leading': 'https://flutter.dev/images/widget-catalog/material-alert-dialog.png',
    },
    {
      'title': 'Align',
      'subtitle': '相对于父元素的中心定位，可看做\nposition: absolute',
      'leading': 'https://flutter.github.io/assets-for-api-docs/assets/widgets/align_constant.png',
    },
    {
      'title': 'AnimatedBuilder',
      'subtitle': '用于构建动画的通用小部件',
    },
    {
      'title': 'AnimatedContainer',
      'subtitle': '渐变动画容器',
    },
    {
      'title': 'AnimatedCrossFade',
      'subtitle': '在两个子元素之间淡入淡出的动画容器',
    },
    {
      'title': 'AnimatedDefaultTextStyle',
      'subtitle': '字体渐变动画容器',
    },
    {
      'title': 'AnimatedList',
      'subtitle': '可以为添加、删除元素添加动画的可滚动列表',
    },
    {
      'title': 'AnimatedModalBarrier',
      'subtitle': '❌❌ 不太懂 ❌❌',
    },
    {
      'title': 'AnimatedOpacity',
      'subtitle': '透明度动画容器',
    },


    {
      'title': 'Slider',
      'subtitle': '滑动条(与Align的例子相同)',
      'leading': 'https://flutter.dev/images/widget-catalog/material-slider.png'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return  ScreenContainer(
      isHome: true,
      title: 'Flutter Widgets',
      body: ListView(
        children: _widgetsData.map<Widget>((item) {
          return GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, '/' + new ReCase(item['title']).snakeCase);
            },
            child: Card(
              margin: EdgeInsets.only(bottom: 10),
              child: new ListTile(
                leading: Container(
                  margin: EdgeInsets.only(right: 30), 
                  child: item.containsKey('leading') && item['leading'] != '' ? Image.network(item['leading'], width: 60, fit: BoxFit.cover,) : FlutterLogo(size: 60,),
                ),
                title: Text(item['title']),
                subtitle: Text(item['subtitle']),
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}