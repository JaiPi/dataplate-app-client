import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:date_picker_timeline/date_picker_timeline.dart';

class Calendar extends StatelessWidget {
  final Function(DateTime) datefunction;
  final DatePickerController controller;
  final DateTime selectedValue;

  const Calendar(this.datefunction, this.controller, this.selectedValue);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20.0),
      color: Colors.blueGrey[100],
      child: Column(
        //mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            child: DatePicker(
              DateTime.now(),
              width: 60,
              height: 80,
              controller: controller,
              initialSelectedDate: DateTime.now(),
              selectionColor: Colors.black,
              selectedTextColor: Colors.white,
              inactiveDates: [
                DateTime.now().add(const Duration(days: 0)),
              ],
              onDateChange: datefunction,
            ),
          ),
          Container(
            padding: EdgeInsets.all(8),
            child: Column(
              children: [
                const Text("You Selected:"),
                Text(selectedValue.toString()),
              ],
            ),
          ),
        ],
      ),
    );
    ;
  }
}
