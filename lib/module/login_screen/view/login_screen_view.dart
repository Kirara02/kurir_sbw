import 'package:flutter/material.dart';
import 'package:mobile_kurir_sbw/core.dart';
import '../controller/login_screen_controller.dart';

class LoginScreenView extends StatefulWidget {
  const LoginScreenView({Key? key}) : super(key: key);

  Widget build(context, LoginScreenController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("LoginScreen"),
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
  State<LoginScreenView> createState() => LoginScreenController();
}