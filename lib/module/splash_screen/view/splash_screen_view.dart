import 'package:flutter/material.dart';
import 'package:mobile_kurir_sbw/core.dart';
import '../controller/splash_screen_controller.dart';

class SplashScreenView extends StatefulWidget {
  const SplashScreenView({Key? key}) : super(key: key);

  Widget build(context, SplashScreenController controller) {
    controller.view = this;

    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: const [],
          ),
        ),
      ),
    );
  }

  @override
  State<SplashScreenView> createState() => SplashScreenController();
}
