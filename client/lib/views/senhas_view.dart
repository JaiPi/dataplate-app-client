import 'package:client/widgets/date_picker.dart';
import 'package:flutter/material.dart';

class Senhasview extends StatefulWidget {
  const Senhasview({super.key});

  @override
  State<Senhasview> createState() => _SenhasviewState();
}

class _SenhasviewState extends State<Senhasview> {

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
