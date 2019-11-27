import 'package:flutter/material.dart';
import 'package:flutter_widgets/widgets/screen_container.dart';

class ExpansionPanelScreen extends StatefulWidget {
  ExpansionPanelScreen({Key key}) : super(key: key);

  @override
  _ExpansionPanelScreenState createState() => _ExpansionPanelScreenState();
}

class _ExpansionPanelScreenState extends State<ExpansionPanelScreen> {
  List<Map> items = new List.generate(3, (i) => {
    'header': Center(child: Text('ExpansionPanel $i')),
    'isExpanded': false,
  });

  @override
  Widget build(BuildContext context) {
    return ScreenContainer(
      title: 'ExpansionPanel',
      body: ExpansionPanelList(
        expansionCallback: (idx, isExpanded) {
          setState(() {
            items[idx]['isExpanded'] = !isExpanded;
          });
        },
        children: items.map<ExpansionPanel>((currentItem) => ExpansionPanel(
          isExpanded: currentItem['isExpanded'],
          canTapOnHeader: true,
          body: ListTile(
            title: currentItem['header'],
            subtitle: Text('some words' * 20),
            trailing: Icon(Icons.delete),
            onTap: () {
              setState(() {
                items.removeWhere((item) => item == currentItem);
              });
            },
          ),
          headerBuilder: (context, isExpanded) {
            return currentItem['header'];
          }
        )).toList()
      ),
    );
  }
}