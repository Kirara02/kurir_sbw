import 'package:flutter/material.dart';
import 'package:mobile_kurir_sbw/state_util.dart';
import '../view/beranda_screen_view.dart';

class BerandaScreenController extends State<BerandaScreenView> implements MvcController {
  static late BerandaScreenController instance;
  late BerandaScreenView view;

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