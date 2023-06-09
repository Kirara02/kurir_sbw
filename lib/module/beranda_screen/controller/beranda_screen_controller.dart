import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:mobile_kurir_sbw/state_util.dart';
import '../view/beranda_screen_view.dart';

class BerandaScreenController extends State<BerandaScreenView>
    implements MvcController {
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

  bool userActive = true;

  File? imageFile;

  Future<void> pickImage(ImageSource source) async {
    final picker = ImagePicker();
    final pickedImage = await picker.pickImage(source: source);
    setState(() {
      if (pickedImage != null) {
        imageFile = File(pickedImage.path);
      }
    });
  }
}
