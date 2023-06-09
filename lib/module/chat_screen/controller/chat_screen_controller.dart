import 'package:flutter/material.dart';
import 'package:mobile_kurir_sbw/state_util.dart';
import '../view/chat_screen_view.dart';

class ChatScreenController extends State<ChatScreenView> implements MvcController {
  static late ChatScreenController instance;
  late ChatScreenView view;

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