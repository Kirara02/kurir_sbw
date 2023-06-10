import 'package:flutter/material.dart';
import 'package:mobile_kurir_sbw/core.dart';

class HelpScreenView extends StatefulWidget {
  const HelpScreenView({Key? key}) : super(key: key);

  Widget build(context, HelpScreenController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            IconButton(
              onPressed: () => Get.to(const BerandaScreenView()),
              icon: const Icon(Icons.arrow_back_ios),
            ),
            const Text("Bantuan"),
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
  State<HelpScreenView> createState() => HelpScreenController();
}
