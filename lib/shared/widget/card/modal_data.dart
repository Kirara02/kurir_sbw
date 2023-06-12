// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:mobile_kurir_sbw/core.dart';

class ModalData extends StatelessWidget {
  final String title;
  final String value;
  final Color color;
  const ModalData(
      {Key? key,
      required this.title,
      required this.value,
      this.color = blackColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(bottom: 8.0),
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: yellowColor2,
          ),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: TextStyle(
              fontWeight: color != blackColor ? bold : regular,
              color: color,
            ),
          ),
          Text(
            value,
            style: TextStyle(
              fontWeight: bold,
              color: color,
            ),
          )
        ],
      ),
    );
  }
}
