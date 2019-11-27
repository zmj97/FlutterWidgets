import 'package:flutter/material.dart';
import 'package:flutter_widgets/widgets/screen_container.dart';

class DateAndTimePickerScreen extends StatefulWidget {
  DateAndTimePickerScreen({Key key}) : super(key: key);

  @override
  _DateAndTimePickerScreenState createState() => _DateAndTimePickerScreenState();
}

class _DateAndTimePickerScreenState extends State<DateAndTimePickerScreen> {

  DateTime _dateTime;
  TimeOfDay _timeOfDay;

  void _showDatePicker() async {
    DateTime tmp = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2018),
      lastDate: DateTime(2030),
      builder: (BuildContext context, Widget child) {
        return Theme(
          data: ThemeData.dark(),
          child: child,
        );
      }
    );
    if (tmp == null) {
      return;
    }
    setState(() {
      _dateTime = tmp;
    });
  }

  void _showTimePicker() async {
    TimeOfDay tmp = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.now()
    );
    if (tmp == null) {
      return;
    }
    setState(() {
      _timeOfDay = tmp;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ScreenContainer(
      title: 'DateAndTimePicker',
      body: Column(
        children: <Widget>[
          FlatButton(
            textColor: Theme.of(context).primaryColor,
            child: Text('click here to show date picker'),
            onPressed: _showDatePicker,
          ),
          Text('date picker value: $_dateTime'),
          FlatButton(
            textColor: Theme.of(context).primaryColor,
            child: Text('click here to show time picker'),
            onPressed: _showTimePicker,
          ),
          Text('time picker value: $_timeOfDay')
        ],
      ),
    );
  }
}