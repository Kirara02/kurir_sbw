import 'package:flutter/material.dart';
import 'package:mobile_kurir_sbw/core.dart';
import '../controller/balance_screen_controller.dart';

class BalanceScreenView extends StatefulWidget {
  const BalanceScreenView({Key? key}) : super(key: key);

  Widget build(context, BalanceScreenController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("BalanceScreen"),
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
  State<BalanceScreenView> createState() => BalanceScreenController();
}