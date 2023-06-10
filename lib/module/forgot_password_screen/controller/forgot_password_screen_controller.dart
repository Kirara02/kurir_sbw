import 'package:flutter/material.dart';
import 'package:mobile_kurir_sbw/core.dart';

class ForgotPasswordScreenController extends State<ForgotPasswordScreenView>
    implements MvcController {
  static late ForgotPasswordScreenController instance;
  late ForgotPasswordScreenView view;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);

  TextEditingController emailController = TextEditingController(text: '');

  bool showErrorMessage = false;
  String errorMessage = '';
  void validateInput() {
    if (emailController.text.isNotEmpty) {
      // if (showErrorMessage != true) {
      Get.to(EmailOtpScreenView(email: emailController.text));
      // }
    } else {
      setState(() {
        showErrorMessage = emailController.text.isEmpty;
      });
      errorMessage = "Email tidak ditemukan";
    }
  }
}
