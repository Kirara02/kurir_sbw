import 'package:flutter/material.dart';
import 'package:mobile_kurir_sbw/state_util.dart';
import '../view/register2_screen_view.dart';

class Register2ScreenController extends State<Register2ScreenView>
    implements MvcController {
  static late Register2ScreenController instance;
  late Register2ScreenView view;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);

  String? selectedBank;
  TextEditingController bankController = TextEditingController(text: '');
}
