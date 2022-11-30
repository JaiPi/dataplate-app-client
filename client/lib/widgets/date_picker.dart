import 'package:flutter/material.dart';

import 'package:date_picker_timeline/date_picker_timeline.dart';
import 'package:intl/intl.dart';


class MyDatePicker extends StatefulWidget {
  const MyDatePicker({super.key});

  @override
  State<MyDatePicker> createState() => _MyDatePickerState();
}

class _MyDatePickerState extends State<MyDatePicker> {
  final DatePickerController _controller = DatePickerController();

  DateTime _selectedValue = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Container(
            padding: const EdgeInsets.all(7.0),
            color: Colors.blueGrey[100],
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                DatePicker(
                  DateTime.now(),
                  width: 60,
                  height: 80,
                  controller: _controller,
                  initialSelectedDate: DateTime.now(),
                  selectionColor: Colors.black,
                  selectedTextColor: Colors.white,
                  inactiveDates: [
                    DateTime.now().add(const Duration(days: 3)),
                    DateTime.now().add(const Duration(days: 4)),
                    DateTime.now().add(const Duration(days: 7))
                  ],
                  onDateChange: (date) {
                    // New date selected
                    setState(() {
                      _selectedValue = date;
                    });
                  },
                ),
                Text(DateFormat('dd MMM yyyy').format(_selectedValue)),
              ],
            ),
          );
  }
}