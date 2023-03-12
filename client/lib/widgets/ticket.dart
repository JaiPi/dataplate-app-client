import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Ticket extends StatelessWidget {
  final String titulo;
  final String subtitulo;
  final String day;
  final String month;
  final String fotopath;

  const Ticket(this.titulo, this.subtitulo, this.day, this.month, this.fotopath,
      {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      child: Card(
        color: Colors.white,
        shadowColor: Colors.black,
        elevation: 5,
        child: Column(
          children: [
            Image.asset(
              fotopath,
              fit: BoxFit.cover,
              width: double.infinity,
              height: 150,
            ),
            ListTile(
              title: Text(titulo),
              subtitle: Text(subtitulo),
              trailing: Column(
                children: [
                  Text(day, textScaleFactor: 2),
                  Text(month),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
