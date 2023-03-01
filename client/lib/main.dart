import 'package:client/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:client/dataplate-colors.dart';
import 'package:client/pages/wrapper.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'DataPlate',
      theme: ThemeData(
        primarySwatch: DataPlateColors.laranjaMaterialColor,
        //backgroundColor: Colors.lightGreenAccent,
        fontFamily: "Montserrat-Medium",
      ),
      home: const Wrapper(),
    );
  }
}
