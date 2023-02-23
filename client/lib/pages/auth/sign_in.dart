import 'package:client/dataplate-colors.dart';
import 'package:client/services/auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

class Sign_in extends StatefulWidget {
  const Sign_in({super.key});

  @override
  State<Sign_in> createState() => _Sign_inState();
}

class _Sign_inState extends State<Sign_in> {
  final AuthService _auth = AuthService();

  /* void signin() async {
    dynamic result = await _auth.signInAnon();
    if (result == null)
      print("error signing in :(");
    else
      print("Nice!");
  } */

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: DataPlateColors.cinzento),
      backgroundColor: DataPlateColors.larjanja,
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(120),
          child: Column(
            children: [
              const Text(
                "Dummy Login:",
                textAlign: TextAlign.center,
              ),
              ElevatedButton(
                onPressed: null,
                child: const Text("signin"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
