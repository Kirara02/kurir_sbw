import 'package:flutter/material.dart';
import 'package:mobile_kurir_sbw/state_util.dart';
import '../view/emergency_form_screen_view.dart';

class EmergencyFormScreenController extends State<EmergencyFormScreenView> implements MvcController {
  static late EmergencyFormScreenController instance;
  late EmergencyFormScreenView view;

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