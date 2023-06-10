import 'package:flutter/material.dart';
import 'package:mobile_kurir_sbw/state_util.dart';
import '../view/emergency_history_screen_view.dart';

class EmergencyHistoryScreenController extends State<EmergencyHistoryScreenView> implements MvcController {
  static late EmergencyHistoryScreenController instance;
  late EmergencyHistoryScreenView view;

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