import 'package:flutter/material.dart';
import 'package:flutter_widgets/widgets/screen_container.dart';

class DismissibleScreen extends StatefulWidget {
  DismissibleScreen({Key key}) : super(key: key);

  @override
  _DismissibleScreenState createState() => _DismissibleScreenState();
}

class _DismissibleScreenState extends State<DismissibleScreen> {

  final List<String> strList = new List.generate(20, (i) => 'The $i th item.');

  @override
  Widget build(BuildContext context) {
    return ScreenContainer(
      title: 'Dismissible',
      body: Container(
        height: 300,
        child: ListView.builder(
          itemCount: strList.length,
          itemBuilder: (context, idx) {
            return Card(
              child: Dismissible(
                key: Key(idx.toString()),
                background: Container(
                  alignment: Alignment.centerRight,
                  padding: EdgeInsets.only(right: 20),
                  color: Colors.red,
                  child: Text('Delete', style: TextStyle(color: Colors.white),),
                ),
                child: ListTile(title: Text(strList[idx]),),
                onDismissed: (direction) {
                  strList.removeAt(idx);
                  Scaffold.of(context).showSnackBar(
                    SnackBar(content: new Text('dismissed item $idx'),)
                  );
                },
              ),
            );
          },
        ),
      ),
    );
  }
}