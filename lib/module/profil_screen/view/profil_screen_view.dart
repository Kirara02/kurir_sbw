import 'package:flutter/material.dart';
import 'package:mobile_kurir_sbw/core.dart';

class ProfilScreenView extends StatefulWidget {
  const ProfilScreenView({Key? key}) : super(key: key);

  Widget build(context, ProfilScreenController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            IconButton(
              onPressed: () => Get.to(const BerandaScreenView()),
              icon: const Icon(Icons.arrow_back_ios),
            ),
            const Text("Profil"),
          ],
        ),
        automaticallyImplyLeading: false,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: const Column(
            children: [],
          ),
        ),
      ),
    );
  }

  @override
  State<ProfilScreenView> createState() => ProfilScreenController();
}
