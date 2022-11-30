import 'package:flutter/material.dart';
import 'package:date_picker_timeline/date_picker_timeline.dart';
import '../widgets/calendar.dart';

class Senhasview extends StatefulWidget {
  const Senhasview({super.key});

  @override
  State<Senhasview> createState() => _SenhasviewState();
}

class _SenhasviewState extends State<Senhasview> {
  final DatePickerController _controller = DatePickerController();

  DateTime _selectedValue = DateTime.now();

  @override
  void initState() {
    super.initState();
  }

  void changeDate(date) {
    setState(() {
      _selectedValue = date;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Calendar(
            changeDate,
            _controller,
            _selectedValue,
          ),
          Text(_selectedValue.toString()),
        ],
      ),
    );
  }
}
