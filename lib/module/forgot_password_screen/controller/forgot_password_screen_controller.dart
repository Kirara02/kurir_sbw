import 'package:flutter/material.dart';
import 'package:mobile_kurir_sbw/state_util.dart';
import '../view/forgot_password_screen_view.dart';

class ForgotPasswordScreenController extends State<ForgotPasswordScreenView> implements MvcController {
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
}