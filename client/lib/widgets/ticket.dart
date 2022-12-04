import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Ticket extends StatelessWidget {
  const Ticket({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      child: const Card(
        color: Colors.white,
        shadowColor: Colors.black,
        elevation: 5,
        child: SizedBox(
          width: 300,
          height: 150,
          child: Center(
            child: Text("Ticket"),
          ),
        ),
      ),
    );
  }
}
