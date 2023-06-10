import 'package:flutter/material.dart';
import 'package:mobile_kurir_sbw/core.dart';

class SplashScreenView extends StatefulWidget {
  const SplashScreenView({Key? key}) : super(key: key);

  Widget build(context, SplashScreenController controller) {
    controller.view = this;

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/app_logo.png',
              width: 146,
            ),
            const SizedBox(
              height: 24.0,
            ),
            const Text.rich(
              textAlign: TextAlign.center,
              TextSpan(
                style: TextStyle(
                  fontSize: 26,
                ),
                children: [
                  TextSpan(
                    text: "Driver Kurir\n",
                    style: TextStyle(
                      color: greenColor2,
                      fontWeight: regular,
                    ),
                  ),
                  TextSpan(
                    text: "Setia Bhakti Wanita",
                    style: TextStyle(
                      color: blackColor,
                      fontWeight: bold,
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  State<SplashScreenView> createState() => SplashScreenController();
}
