import 'package:flutter/material.dart';
import 'package:mobile_kurir_sbw/core.dart';
import '../controller/register_screen_controller.dart';

class RegisterScreenView extends StatefulWidget {
  const RegisterScreenView({Key? key}) : super(key: key);

  Widget build(context, RegisterScreenController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("RegisterScreen"),
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
  State<RegisterScreenView> createState() => RegisterScreenController();
}