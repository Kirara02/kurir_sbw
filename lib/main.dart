import 'package:mobile_kurir_sbw/state_util.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mobile_kurir_sbw/core.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Kurir SBW',
        theme: ThemeData(
          useMaterial3: true,
          textTheme: GoogleFonts.interTextTheme(Theme.of(context).textTheme),
        ),
        navigatorKey: Get.navigatorKey,
        home: const SplashScreenView());
  }
}
