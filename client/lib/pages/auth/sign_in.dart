import 'dart:math';

import 'package:client/dataplate-colors.dart';
import 'package:client/services/auth.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

class Sign_in extends StatefulWidget {
  const Sign_in({super.key});

  @override
  State<Sign_in> createState() => _Sign_inState();
}

class _Sign_inState extends State<Sign_in> {
  final AuthService _auth = AuthService();

  void signin() async {
    User result = await _auth.signInAnon();
    if (result == null)
      print("error signing in :(");
    else
      print("It worked!! \nuID: " + result.uid);
  }

  void printUser(user) async {}

  @override
  Widget build(BuildContext context) {
    final _formKey = GlobalKey<FormState>();

    return Scaffold(
        appBar: AppBar(backgroundColor: DataPlateColors.larjanja),
        backgroundColor: DataPlateColors.azul,
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.fromLTRB(20, 200, 20, 200),
            child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  TextFormField(
                    controller: null,
                    decoration: const InputDecoration(
                      icon: Icon(Icons.email),
                      hintText: 'Enter your Email',
                      labelText: 'Email',
                    ),
                  ),
                  TextFormField(
                    obscureText: true,
                    controller: null,
                    decoration: const InputDecoration(
                      icon: Icon(Icons.password),
                      hintText: 'Enter your password',
                      labelText: 'Password',
                    ),
                  ),
                  Container(
                      padding: const EdgeInsets.only(left: 150.0, top: 40.0),
                      child: ElevatedButton(
                        onPressed: signin,
                        child: Text('Submit'),
                      )),
                ],
              ),
            ),
          ),
        ));
  }
}
