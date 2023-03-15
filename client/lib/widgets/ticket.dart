import 'package:client/dataplate-colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:qr_flutter/qr_flutter.dart';

class Ticket extends StatelessWidget {
  final String? titulo;
  final String? subtitulo;
  final String? day;
  final String? month;
  final String? schedule;
  final String? fotopath;
  final String? qr_data;
  final String? weekday;

  const Ticket({
    this.titulo,
    this.subtitulo,
    this.schedule,
    this.day,
    this.month,
    this.weekday,
    this.fotopath,
    this.qr_data,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    void pop_qr() {
      showDialog<String>(
        context: context,
        builder: (BuildContext context) => Dialog(
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(32.0))),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                QrImage(
                  data: qr_data!,
                  version: QrVersions.auto,
                  size: 300,
                ),
                Column(
                  children: [
                    Text("$weekday, $day de $month"),
                    Text("$schedule")
                  ],
                ),
                const SizedBox(height: 15),
                TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text('Fechar'),
                ),
              ],
            ),
          ),
        ),
      );
    }

    return Container(
      padding: const EdgeInsets.all(10),
      child: Card(
        color: Colors.white,
        shadowColor: Colors.black,
        elevation: 5,
        child: InkWell(
          onTap: () => pop_qr(),
          child: Column(
            children: [
              Image.asset(
                fotopath!,
                fit: BoxFit.cover,
                width: double.infinity,
                height: 150,
              ),
              ListTile(
                title: Text(titulo!),
                subtitle: Row(
                  children: [
                    Text("$schedule - "),
                    Text(subtitulo!),
                  ],
                ),
                trailing: Column(
                  children: [
                    Text(day!, textScaleFactor: 2),
                    Text(month!),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
