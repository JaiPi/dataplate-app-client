import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import '../widgets/my_senhas_title.dart';
import '../widgets/ticket.dart';

class SenhasView extends StatefulWidget {
  const SenhasView({super.key});

  @override
  State<SenhasView> createState() => _SenhasViewState();
}

class _SenhasViewState extends State<SenhasView> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        child: Column(
          children: const [
            MysenhasTitle(),
            Divider(
              color: Colors.blueGrey,
              height: 10,
              thickness: 3,
              indent: 20,
              endIndent: 20,
            ),
            Ticket(
              "Lasanha",
              "prato de carne",
              "jantar",
              "7",
              "março",
              "assets/images/lasanha.png",
            ),
            Ticket(
              "Bacalhau com natas",
              "prato de peixe",
              "almoço",
              "8",
              "março",
              "assets/images/bacalhau.png",
            )
          ],
        ),
      ),
    );
  }
}
