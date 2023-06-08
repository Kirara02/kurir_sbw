import 'package:flutter/material.dart';
import 'package:mobile_kurir_sbw/state_util.dart';
import '../view/order_history_screen_view.dart';

class OrderHistoryScreenController extends State<OrderHistoryScreenView> implements MvcController {
  static late OrderHistoryScreenController instance;
  late OrderHistoryScreenView view;

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