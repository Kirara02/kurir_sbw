import 'package:flutter/material.dart';
import 'package:mobile_kurir_sbw/core.dart';
import '../controller/order_history_screen_controller.dart';

class OrderHistoryScreenView extends StatefulWidget {
  const OrderHistoryScreenView({Key? key}) : super(key: key);

  Widget build(context, OrderHistoryScreenController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("OrderHistoryScreen"),
        actions: const [],
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
  State<OrderHistoryScreenView> createState() => OrderHistoryScreenController();
}