import 'package:flutter/material.dart';
import 'package:mobile_kurir_sbw/state_util.dart';
import '../view/help_screen_view.dart';

class HelpScreenController extends State<HelpScreenView> implements MvcController {
  static late HelpScreenController instance;
  late HelpScreenView view;

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