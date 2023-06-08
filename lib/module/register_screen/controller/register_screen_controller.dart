import 'package:flutter/material.dart';
import 'package:mobile_kurir_sbw/state_util.dart';
import '../view/register_screen_view.dart';

class RegisterScreenController extends State<RegisterScreenView> implements MvcController {
  static late RegisterScreenController instance;
  late RegisterScreenView view;

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