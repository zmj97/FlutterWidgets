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
      'title': 'AnimatedPhysicalModel',
      'subtitle': '盒动画容器',
    },
    {
      'title': 'AnimatedPositioned',
      'subtitle': '定位动画容器',
    },
    {
      'title': 'AnimatedSize',
      'subtitle': '大小动画容器',
    },

    {
      'title': 'AppBar',
      'subtitle': '大小动画容器',
      'leading': 'https://flutter.dev/images/widget-catalog/material-app-bar.png'
    },
    {
      'title': 'AspectRatio',
      'subtitle': '按比例填充上层widget的容器',
    },
    {
      'title': 'AssetBundle',
      'subtitle': '获取静态资源',
    },
    {
      'title': 'BackdropFilter',
      'subtitle': '滤镜与映射',
    },
    {
      'title': 'Baseline',
      'subtitle': '按照baseline进行定位\n(positioned为按照左上角)',
    },
    {
      'title': 'BottomNavigationBar',
      'subtitle': '底部导航栏',
      'leading': 'https://flutter.dev/images/widget-catalog/material-bottom-navigation-bar.png'
    },
    {
      'title': 'BottomSheet',
      'subtitle': '底部弹窗',
      'leading': 'https://flutter.dev/images/widget-catalog/material-bottom-sheets.png'
    },
    {
      'title': 'BottonBar',
      'subtitle': '一排按钮',
      'leading': 'https://flutter.dev/images/widget-catalog/material-button-bar.png'
    },
    {
      'title': 'Card',
      'subtitle': '卡片',
      'leading': 'https://flutter.dev/images/widget-catalog/material-card.png'
    },
    {
      'title': 'Center',
      'subtitle': '居中',
    },
    {
      'title': 'Checkbox',
      'subtitle': '复选框',
      'leading': 'https://flutter.dev/images/widget-catalog/material-checkbox.png'
    },
    {
      'title': 'Chip',
      'subtitle': '面包屑、碎片、标签',
      'leading': 'https://flutter.dev/images/widget-catalog/material-chip.png'
    },
    {
      'title': 'CircularProgressIndicator',
      'subtitle': '加载圈',
      'leading': 'https://flutter.dev/images/widget-catalog/material-circular-progress-indicator.png'
    },
    {
      'title': 'ClipOval',
      'subtitle': '圆形裁剪',
    },
    {
      'title': 'ClipPath',
      'subtitle': '自定义路径裁剪',
    },
    {
      'title': 'ClipRRect',
      'subtitle': '圆角裁剪',
    },
    {
      'title': 'ClipRect',
      'subtitle': '矩形裁剪',
    },
    {
      'title': 'Column',
      'subtitle': '具有多个按垂直方向排列的子元素(与Card示例相同)',
    },
    {
      'title': 'ConstrainedBox',
      'subtitle': '限制尺寸范围的容器',
    },
    {
      'title': 'Container',
      'subtitle': '通用容器，添加长宽修饰等属性(与center示例相同)',
    },
    {
      'title': 'CupertinoActionSheet',
      'subtitle': 'iOS风格的底部选择弹出窗',
      'leading': 'https://flutter.dev/images/widget-catalog/cupertino-action-sheet.png'
    },
    {
      'title': 'CupertinoActivityIndicator',
      'subtitle': 'iOS风格的加载圈',
      'leading': 'https://flutter.dev/images/widget-catalog/cupertino-activity-indicator.png'
    },
    {
      'title': 'CupertinoAlertDialog',
      'subtitle': 'iOS风格的弹窗',
      'leading': 'https://flutter.dev/images/widget-catalog/cupertino-alert-dialog.png'
    },
    {
      'title': 'CupertinoButton',
      'subtitle': 'iOS风格的按钮',
      'leading': 'https://flutter.dev/images/widget-catalog/cupertino-button.png'
    },
    {
      'title': 'CupertinoDatePicker',
      'subtitle': 'iOS风格的日期选择器',
      'leading': 'https://flutter.dev/images/widget-catalog/cupertino-date-picker.png'
    },
    {
      'title': 'CupertinoDialog',
      'subtitle': 'iOS风格的弹窗(只提供child)',
      'leading': 'https://flutter.dev/images/widget-catalog/cupertino-dialog.png'
    },
    {
      'title': 'CupertinoDialogAction',
      'subtitle': '主要在CupertinoAlertDialog中使用的按钮',
      'leading': 'https://flutter.dev/images/widget-catalog/cupertino-dialog-action.png'
    },
    {
      'title': 'CupertinoFullscreenDialogTransition',
      'subtitle': 'iOS风格的全屏动画弹窗',
      'leading': 'https://flutter.dev/images/widget-catalog/cupertino-fullscreen-dialog-transition.png'
    },


    {
      'title': 'Slider',
      'subtitle': '滑动条(与Align示例相同)',
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