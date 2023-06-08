import 'package:flutter/material.dart';
import 'package:mobile_kurir_sbw/module/beranda_screen/view/beranda_screen_view.dart';
import 'package:mobile_kurir_sbw/state_util.dart';
import '../view/login_screen_view.dart';

class LoginScreenController extends State<LoginScreenView>
    implements MvcController {
  static late LoginScreenController instance;
  late LoginScreenView view;

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
  TextEditingController passwordController = TextEditingController(text: '');

  bool isChecked = false;

  bool showErrorMessage = false;
  void validateInput() {
    if (emailController.text.isNotEmpty && passwordController.text.isNotEmpty) {
      // if (showErrorMessage != true) {
      Get.offAll(const BerandaScreenView());
      // }
    } else {
      setState(() {
        showErrorMessage =
            emailController.text.isEmpty || passwordController.text.isEmpty;
      });
    }
  }
}
