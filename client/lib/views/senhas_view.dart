import 'package:flutter/material.dart';
import 'package:date_picker_timeline/date_picker_timeline.dart';
import 'package:intl/intl.dart';

class Senhasview extends StatefulWidget {
  const Senhasview({super.key});

  @override
  State<Senhasview> createState() => _SenhasviewState();
}

class _SenhasviewState extends State<Senhasview> {
  DatePickerController _controller = DatePickerController();

  DateTime _selectedValue = DateTime.now();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.replay),
        onPressed: () {
          _controller.animateToSelection();
        },
      ),
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(20.0),
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
          ),
        ],
      ),
    );
  }
}
