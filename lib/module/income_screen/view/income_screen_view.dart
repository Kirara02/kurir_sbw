import 'package:flutter/material.dart';
import 'package:mobile_kurir_sbw/core.dart';
import '../controller/income_screen_controller.dart';

class IncomeScreenView extends StatefulWidget {
  const IncomeScreenView({Key? key}) : super(key: key);

  Widget build(context, IncomeScreenController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("IncomeScreen"),
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
  State<IncomeScreenView> createState() => IncomeScreenController();
}