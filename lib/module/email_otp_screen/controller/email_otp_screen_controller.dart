import 'package:flutter/material.dart';
import 'package:mobile_kurir_sbw/core.dart';
import 'package:mobile_kurir_sbw/state_util.dart';
import '../view/email_otp_screen_view.dart';

class EmailOtpScreenController extends State<EmailOtpScreenView>
    implements MvcController {
  static late EmailOtpScreenController instance;
  late EmailOtpScreenView view;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);

  TextEditingController kodeController = TextEditingController(text: '');

  bool showErrorMessage = false;
  String errorMessage = '';
  void validateInput() {
    if (kodeController.text.isNotEmpty) {
      // if (showErrorMessage != true) {
      Get.to(const NewPasswordScreenView());
      // }
    } else {
      setState(() {
        showErrorMessage = kodeController.text.isEmpty;
      });
      errorMessage = 'Kode tidak valid';
    }
  }
}
