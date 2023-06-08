import 'package:flutter/material.dart';
import 'package:mobile_kurir_sbw/state_util.dart';
import '../view/balance_screen_view.dart';

class BalanceScreenController extends State<BalanceScreenView> implements MvcController {
  static late BalanceScreenController instance;
  late BalanceScreenView view;

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