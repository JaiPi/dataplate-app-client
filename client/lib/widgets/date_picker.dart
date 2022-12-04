import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:date_picker_timeline/date_picker_timeline.dart';
import 'package:intl/intl.dart';

class MyDatePicker extends StatelessWidget {
  final DatePickerController _controller = DatePickerController();
  final DateTime _selectedValue;
  final Function(DateTime) changeDate;

  MyDatePicker(this._selectedValue, this.changeDate, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(7.0),
      //color: Colors.blueGrey[100],
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
            inactiveDates: const [
              //DateTime.now().add(const Duration(days: 3)),
              // DateTime.now().add(const Duration(days: 4)),
              // DateTime.now().add(const Duration(days: 7))
            ],
            onDateChange: changeDate,
          ),
        ],
      ),
    );
    ;
  }
}
