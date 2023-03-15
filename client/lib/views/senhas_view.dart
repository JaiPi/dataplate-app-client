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
              titulo: "Lasanha",
              subtitulo: "prato de carne",
              schedule: "jantar",
              day: "7",
              month: "março",
              weekday: "segunda-feira",
              fotopath: "assets/images/lasanha.png",
              qr_data: "oola",
            ),
            Ticket(
              titulo: "Bacalhau com natas",
              subtitulo: "prato de peixe",
              schedule: "almoço",
              weekday: "terça-feira",
              day: "8",
              month: "março",
              fotopath: "assets/images/bacalhau.png",
              qr_data: "123",
            ),
            Ticket(
              titulo: "Bacalhau com natas",
              subtitulo: "prato de peixe",
              schedule: "almoço",
              day: "9",
              month: "março",
              weekday: "quinta-feira",
              fotopath: "assets/images/bacalhau.png",
              qr_data: "Boas pessoal",
            )
          ],
        ),
      ),
    );
  }
}
