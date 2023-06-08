import 'package:flutter/material.dart';
import 'package:mobile_kurir_sbw/state_util.dart';
import '../view/profil_screen_view.dart';

class ProfilScreenController extends State<ProfilScreenView> implements MvcController {
  static late ProfilScreenController instance;
  late ProfilScreenView view;

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