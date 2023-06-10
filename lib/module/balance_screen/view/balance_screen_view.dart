import 'package:flutter/material.dart';
import 'package:mobile_kurir_sbw/core.dart';

class BalanceScreenView extends StatefulWidget {
  const BalanceScreenView({Key? key}) : super(key: key);

  Widget build(context, BalanceScreenController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            IconButton(
              onPressed: () => Get.to(const BerandaScreenView()),
              icon: const Icon(Icons.arrow_back_ios),
            ),
            const Text("Balance"),
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
  State<BalanceScreenView> createState() => BalanceScreenController();
}
