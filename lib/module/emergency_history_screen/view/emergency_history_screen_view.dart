import 'package:flutter/material.dart';
import 'package:mobile_kurir_sbw/core.dart';
import '../controller/emergency_history_screen_controller.dart';

class EmergencyHistoryScreenView extends StatefulWidget {
  const EmergencyHistoryScreenView({Key? key}) : super(key: key);

  Widget build(context, EmergencyHistoryScreenController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("EmergencyHistoryScreen"),
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
  State<EmergencyHistoryScreenView> createState() => EmergencyHistoryScreenController();
}