import 'package:flutter/material.dart';
import 'package:mobile_kurir_sbw/core.dart';

class NewPasswordScreenController extends State<NewPasswordScreenView>
    implements MvcController {
  static late NewPasswordScreenController instance;
  late NewPasswordScreenView view;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);

  TextEditingController passwordController = TextEditingController(text: '');
  TextEditingController konfirmasiController = TextEditingController(text: '');

  bool showErrorMessage = false;
  String errorMessage = '';
  void validateInput() {
    if (passwordController.text.isNotEmpty &&
        konfirmasiController.text.isNotEmpty) {
      if (passwordController.text == konfirmasiController.text) {
        Get.to(const LoginScreenView());
      } else {
        errorMessage = "Password dan konfirmasi password harus sama";
      }
    } else {
      setState(() {
        showErrorMessage = passwordController.text.isEmpty ||
            konfirmasiController.text.isEmpty;
      });
      errorMessage = "Tidak boleh kosong";
    }
  }
}
