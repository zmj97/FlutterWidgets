import 'package:flutter/material.dart';
import 'package:flutter_widgets/widgets/screen_container.dart';

class AnimatedListScreen extends StatefulWidget {
  AnimatedListScreen({Key key}) : super(key: key);

  @override
  _AnimatedListScreenState createState() => _AnimatedListScreenState();
}

class _AnimatedListScreenState extends State<AnimatedListScreen> {
  final GlobalKey<AnimatedListState> _listKey = new GlobalKey<AnimatedListState>();
  final TextEditingController _inputController = new TextEditingController();
  List<String> _list = [
    '回车添加',
    '长按删除'
  ];
  Tween<Offset> animationTween = Tween<Offset>(
    begin: Offset(0, 0.5),
    end: Offset(0, 0),
  );

  Widget _getListItem(int idx, Animation<double> animation) {
    return SlideTransition(
      position: animation.drive(animationTween),
      child: GestureDetector(
        // 长按删除
        onLongPress: () {
          _listKey.currentState.removeItem(idx, (context, animation) {
            final Widget result = _getListItem(idx, animation);
            _list.removeAt(idx);
            return result;
          });
        },
        child: Card(child: ListTile(
          title: Text(_list[idx]),
        ),),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ScreenContainer(
      title: 'AnimatedList',
      body: Column(
        children: <Widget>[
          TextField(
            controller: _inputController,
            autofocus: true,
            decoration: InputDecoration(hintText: '添加一个新的ToDo'),
            // 回车添加
            onSubmitted: (text) {
              if (text == '') return;
              _list.insert(0, text);
              _listKey.currentState.insertItem(0);
              // 添加后清空输入框
              _inputController.clear();
            },
          ),
          Container(
            margin: EdgeInsets.only(top: 12),
            height: MediaQuery.of(context).size.height / 4,
            child: AnimatedList(
              key: _listKey,
              initialItemCount: _list.length,
              itemBuilder: (context, idx, animation) {
                return  _getListItem(idx, animation);
              },
            ),
          )
        ],
      ),
    );
  }
}