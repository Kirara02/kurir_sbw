import 'package:flutter/material.dart';
import 'package:mobile_kurir_sbw/core.dart';
import '../controller/help_screen_controller.dart';

class HelpScreenView extends StatefulWidget {
  const HelpScreenView({Key? key}) : super(key: key);

  Widget build(context, HelpScreenController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("HelpScreen"),
        actions: const [],
      ),
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
  State<HelpScreenView> createState() => HelpScreenController();
}