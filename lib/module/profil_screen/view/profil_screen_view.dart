import 'package:flutter/material.dart';
import 'package:mobile_kurir_sbw/core.dart';
import '../controller/profil_screen_controller.dart';

class ProfilScreenView extends StatefulWidget {
  const ProfilScreenView({Key? key}) : super(key: key);

  Widget build(context, ProfilScreenController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("ProfilScreen"),
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
  State<ProfilScreenView> createState() => ProfilScreenController();
}