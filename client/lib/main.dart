import 'package:client/pages/home_page.dart';
import 'package:client/pages/sign_in.dart';
import 'package:client/pages/splashscreen.dart';
import 'package:flutter/material.dart';
import 'package:client/dataplate-colors.dart';
import 'package:client/pages/AuthController.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'package:get/get.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform)
      .then((value) => Get.put(AuthController()));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'DataPlate',
      theme: ThemeData(
        primarySwatch: DataPlateColors.laranjaMaterialColor,
        //backgroundColor: Colors.lightGreenAccent,
        fontFamily: "Montserrat-Medium",
      ),
      home: const SplashScreen(),
    );
  }
}
