// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:mobile_kurir_sbw/shared/theme/theme_config.dart';

class ButtonMin extends StatelessWidget {
  final String title;
  final VoidCallback? onPressed;
  final bool isfilled;
  const ButtonMin({
    Key? key,
    required this.title,
    this.onPressed,
    this.isfilled = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        constraints: BoxConstraints(minWidth: 150),
        padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 40),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: greenColor),
          color: isfilled == true ? greenColor : whiteColor,
        ),
        child: Center(
          child: Text(
            title,
            style: TextStyle(
              fontSize: 22.0,
              color: isfilled == true ? whiteColor : blackColor,
            ),
          ),
        ),
      ),
    );
  }
}
