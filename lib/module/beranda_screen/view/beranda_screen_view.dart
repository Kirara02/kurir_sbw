import 'package:flutter/material.dart';
import 'package:mobile_kurir_sbw/core.dart';
import '../controller/beranda_screen_controller.dart';

class BerandaScreenView extends StatefulWidget {
  const BerandaScreenView({Key? key}) : super(key: key);

  Widget build(context, BerandaScreenController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("BerandaScreen"),
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
  State<BerandaScreenView> createState() => BerandaScreenController();
}