import 'dart:math';

import 'package:client/dataplate-colors.dart';
import 'package:client/pages/AuthController.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Sign_up extends StatelessWidget {
  const Sign_up({super.key});

  @override
  Widget build(BuildContext context) {
    var emailcontroller = TextEditingController();
    var passwordcontroller = TextEditingController();

    final _formKey = GlobalKey<FormState>();

    void signup() {
      Get.put(AuthController.instance.register(
          emailcontroller.text.trim(), passwordcontroller.text.trim()));
    }

    return Scaffold(
        appBar: AppBar(backgroundColor: DataPlateColors.larjanja),
        backgroundColor: DataPlateColors.azul,
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.fromLTRB(20, 200, 20, 200),
            child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  TextFormField(
                    controller: emailcontroller,
                    decoration: const InputDecoration(
                      icon: Icon(Icons.email),
                      hintText: 'Enter your Email',
                      labelText: 'Email',
                    ),
                  ),
                  TextFormField(
                    obscureText: true,
                    controller: passwordcontroller,
                    decoration: const InputDecoration(
                      icon: Icon(Icons.password),
                      hintText: 'Enter your password',
                      labelText: 'Password',
                    ),
                  ),
                  Container(
                      padding: const EdgeInsets.only(top: 40.0),
                      child: ElevatedButton(
                        onPressed: () => signup(),
                        child: const Text('Registar'),
                      )),
                ],
              ),
            ),
          ),
        ));
  }
}
