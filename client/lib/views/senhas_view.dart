import 'package:client/date_picker.dart';
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
        children: const [
          MyDatePicker(),
        ],
      ),
    );
  }
}
