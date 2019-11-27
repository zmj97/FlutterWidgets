import 'package:flutter/material.dart';
import 'package:flutter_widgets/widgets/screen_container.dart';

class DataTableScreen extends StatelessWidget {
  const DataTableScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenContainer(
      title: 'DataTable',
      body: DataTable(
        columns: ['Name', 'Gender', 'Age'].map<DataColumn>(
          (item) => DataColumn(label: Text(item))
        ).toList(),
        rows: [
          ['Amy', 'female', 18],
          ['Bob', 'male', 38],
          ['Cindy', 'female', 28],
          ['Ellen', 'female', 20],
        ].map<DataRow>(
          (person) => DataRow(
            cells: person.map<DataCell>(
              (item) => DataCell(Text(item.toString()))
            ).toList()
          )
        ).toList()
      ),
    );
  }
}