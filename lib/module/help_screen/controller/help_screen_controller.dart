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

  String selectedParent = '';

  final List<String> mainMenu = [
    'Cara menelpon kantor',
    'Cara pulihkan password',
    'Cara menggunakan emergency button',
  ];

  final Map<String, List<String>> subMenu = {
    'Cara menelpon kantor': [
      'Panggil nomor kantor kami di +123456789.',
    ],
    'Cara pulihkan password': [
      'Klik pada tombol "Lupa Password" dan ikuti petunjuk yang diberikan.',
    ],
    'Cara menggunakan emergency button': [
      'Tekan tombol emergency button selama 3 detik untuk mengaktifkannya.',
    ],
  };

  void toggleSubMenu(String parent) {
    setState(() {
      if (selectedParent == parent) {
        selectedParent = '';
      } else {
        selectedParent = parent;
      }
    });
  }

}