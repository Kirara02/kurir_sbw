import 'package:flutter/material.dart';
import 'package:mobile_kurir_sbw/state_util.dart';
import '../view/login_screen_view.dart';

class LoginScreenController extends State<LoginScreenView> implements MvcController {
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
}