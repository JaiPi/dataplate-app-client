import 'dart:math';

import 'package:client/dataplate-colors.dart';
import 'package:client/pages/sign_up.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Sign_in extends StatelessWidget {
  const Sign_in({super.key});
  @override
  Widget build(BuildContext context) {
    final _formKey = GlobalKey<FormState>();

    void go_to_signup() async {
      Get.to(() => Sign_up());
    }

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
                    padding: const EdgeInsets.only(top: 40.0),
                    child: ElevatedButton(
                      onPressed: () => null,
                      child: const Text('Entrar'),
                    ),
                  ),
                  TextButton(
                    child: const Text(
                      "Não tens conta?",
                      style: TextStyle(color: Colors.black),
                    ),
                    onPressed: () => go_to_signup(),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
