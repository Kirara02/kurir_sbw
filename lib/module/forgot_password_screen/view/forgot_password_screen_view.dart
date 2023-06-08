import 'package:flutter/material.dart';
import 'package:mobile_kurir_sbw/core.dart';
import '../controller/forgot_password_screen_controller.dart';

class ForgotPasswordScreenView extends StatefulWidget {
  const ForgotPasswordScreenView({Key? key}) : super(key: key);

  Widget build(context, ForgotPasswordScreenController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("ForgotPasswordScreen"),
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
  State<ForgotPasswordScreenView> createState() => ForgotPasswordScreenController();
}