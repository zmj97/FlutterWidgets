import 'package:flutter/material.dart';
import 'package:flutter_widgets/widgets/screen_container.dart';

class AbsorbPointerScreen extends StatefulWidget {
  AbsorbPointerScreen({Key key}) : super(key: key);

  @override
  _AbsorbPointerScreenState createState() => _AbsorbPointerScreenState();
}

class _AbsorbPointerScreenState extends State<AbsorbPointerScreen> {
  bool _isAbsorb = false;
  int _clickCount = 0;

  Widget _getExampleWidget() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text('_isAbsorb: '),
        Switch(
          value: _isAbsorb,
          onChanged: (bool newValue) => setState(() {
            _isAbsorb = newValue;
          }),
        ),
        AbsorbPointer(
          absorbing: _isAbsorb,
          child: FlatButton(
            child: Text('点击增加count'),
            textTheme: ButtonTextTheme.primary,
            onPressed: () => setState(() {
              _clickCount++;
            }),
          ),
        ),
        Text('count: $_clickCount'),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return ScreenContainer(
      title: 'AbsorbPointer',
      body: _getExampleWidget(),
    );
  }
}