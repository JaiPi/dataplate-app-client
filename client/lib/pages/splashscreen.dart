import 'package:client/dataplate-colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      height: double.maxFinite,
      color: DataPlateColors.cinzento,
      child: Center(
        child: Container(
          width: 100,
          height: 100,
          child: const CircularProgressIndicator(
            backgroundColor: DataPlateColors.larjanja,
          ),
        ),
      ),
    );
  }
}
