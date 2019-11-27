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
      'title': 'CupertinoNavigationBar',
      'subtitle': 'iOS风格的顶部导航栏',
      'leading': 'https://flutter.dev/images/widget-catalog/cupertino-nav-bar.png'
    },
    {
      'title': 'CupertinoPageScaffold',
      'subtitle': 'iOS风格的页面布局',
      'leading': 'https://flutter.dev/images/widget-catalog/cupertino-page-scaffold.png'
    },

    {
      'title': 'CupertinoPicker',
      'subtitle': 'iOS风格的选择器',
      'leading': 'https://flutter.dev/images/widget-catalog/cupertino-picker.png'
    },
    {
      'title': 'CupertinoPopupSurface',
      'subtitle': 'iOS风格的popup容器',
    },
    {
      'title': 'CupertinoScrollbar',
      'subtitle': 'iOS风格的滚动条',
      'leading': 'https://flutter.dev/images/widget-catalog/cupertino-scrollbar.png'
    },
    {
      'title': 'CupertinoSegmentedControl',
      'subtitle': 'iOS风格的分段控制器',
      'leading': 'https://flutter.dev/images/widget-catalog/cupertino-segmented-control.png'
    },
    {
      'title': 'CupertinoSlider',
      'subtitle': 'iOS风格的滑动条',
      'leading': 'https://flutter.dev/images/widget-catalog/cupertino-slider.png'
    },
    {
      'title': 'CupertinoSwitch',
      'subtitle': 'iOS风格的开关',
      'leading': 'https://flutter.dev/images/widget-catalog/cupertino-switch.png'
    },
    {
      'title': 'CupertinoTabBar',
      'subtitle': 'iOS风格的tab栏',
      'leading': 'https://flutter.dev/images/widget-catalog/cupertino-tab-bar.png'
    },
    {
      'title': 'CupertinoTabScaffold',
      'subtitle': 'iOS风格的tab布局',
      'leading': 'https://flutter.dev/images/widget-catalog/cupertino-tab-scaffold.png'
    },
    {
      'title': 'CupertinoTabView',
      'subtitle': 'iOS风格的tab视图',
      'leading': 'https://flutter.dev/images/widget-catalog/cupertino-tab-view.png'
    },
    {
      'title': 'CupertinoTextField',
      'subtitle': 'iOS风格的输入框',
      'leading': 'https://flutter.dev/images/widget-catalog/cupertino-textfield.png'
    },
    {
      'title': 'CupertinoTimePicker',
      'subtitle': 'iOS风格的时间选择器',
      'leading': 'https://flutter.dev/images/widget-catalog/cupertino-timer-picker.png'
    },
    {
      'title': 'CustomMultiChildLayout',
      'subtitle': '使用delegate(委托)对多个子节点进行定位和控制大小的容器',
    },
    {
      'title': 'CustomPaint',
      'subtitle': 'canvas画图',
    },
    {
      'title': 'CustomScrollView',
      'subtitle': '使用slivers创建的可滚动视图',
    },
    {
      'title': 'CustomSingleChildLayout',
      'subtitle': '使用delegate(委托)对单个子节点进行定位和控制大小的容器',
    },
    {
      'title': 'DataTable',
      'subtitle': '数据表格',
      'leading': 'https://flutter.dev/images/widget-catalog/material-data-table.png'
    },
    {
      'title': 'DateAndTimePicker',
      'subtitle': '时间选择器',
      'leading': 'https://material-design.storage.googleapis.com/publish/material_v_9/0B7WCemMG6e0VY2h4WElGdEhPb2c/components_pickers.png'
    },
    {
      'title': 'DecoratedBox',
      'subtitle': '在子节点渲染之前(之后)绘制decoration',
    },
    {
      'title': 'DecoratedBoxTransition',
      'subtitle': '在子节点渲染之前(之后)绘制decoration(动画版)',
    },
    {
      'title': 'DefaultTextStyle',
      'subtitle': '默认字体样式容器',
    },
    {
      'title': 'Dismissible',
      'subtitle': '滑动进行删除等操作的容器',
    },
    {
      'title': 'Divider',
      'subtitle': '分割线',
      'leading': 'https://flutter.dev/images/widget-catalog/material-divider.png'
    },
    {
      'title': 'DragTarget',
      'subtitle': '拖拽目标',
    },
    {
      'title': 'Draggable',
      'subtitle': '可拖动容器',
    },
    {
      'title': 'Drawer',
      'subtitle': '抽屉',
      'leading': 'https://flutter.dev/images/widget-catalog/material-drawer.png'
    },
    {
      'title': 'DropdownButton',
      'subtitle': '下拉按钮',
      'leading': 'https://storage.googleapis.com/material-design/publish/material_v_11/assets/0B7WCemMG6e0VakJ6a0F2MFJaaDQ/components_menus.png'
    },
    {
      'title': 'Expanded',
      'subtitle': '拉伸填满容器',
    },
    {
      'title': 'ExpansionPanel',
      'subtitle': '可下拉面板',
      'leading': 'https://material-design.storage.googleapis.com/publish/material_v_9/0B7WCemMG6e0VOXF3eEJ3azZMSjg/components_expansion_panels.png'
    },
    {
      'title': 'FadeTransition',
      'subtitle': '透明度动画',
    },
    {
      'title': 'FittedBox',
      'subtitle': '大小适应容器',
    },
    {
      'title': 'FlatButton',
      'subtitle': '平滑按钮(查看Card样例中的按钮)',
      'leading': 'https://material-design.storage.googleapis.com/publish/material_v_9/0B7WCemMG6e0VNDg3V3ZjU2hsNGc/components_buttons_usage3.png'
    },
    {
      'title': 'FloatingActionButton',
      'subtitle': '浮动按钮',
      'leading': 'https://flutter.dev/images/widget-catalog/material-floating-action-button.png'
    },



    {
      'title': 'FlutterLogo',
      'subtitle': 'Flutter 图标(查看AppBar样例中的FlutterLogo)'
    },



    {
      'title': 'Slider',
      'subtitle': '滑动条(与Align示例相同)',
      'leading': 'https://flutter.dev/images/widget-catalog/material-slider.png'
    },


    {
      'title': 'SnakeBar',
      'subtitle': '底部通知(查看Dismissible中的SnakeBar使用)',
      'leading': 'https://flutter.dev/images/widget-catalog/material-snack-bar.png'
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