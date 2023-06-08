import 'dart:async';

import 'package:flutter/material.dart';
import 'package:mobile_kurir_sbw/module/login_screen/view/login_screen_view.dart';
import 'package:mobile_kurir_sbw/state_util.dart';
import '../view/splash_screen_view.dart';

class SplashScreenController extends State<SplashScreenView>
    implements MvcController {
  static late SplashScreenController instance;
  late SplashScreenView view;

  @override
  void initState() {
    instance = this;
    super.initState();
    Timer(
      const Duration(seconds: 3),
      () => Get.offAll(const LoginScreenView()),
    );
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);
}
