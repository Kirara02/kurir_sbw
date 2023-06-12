// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:mobile_kurir_sbw/core.dart';

class ModalDataAlamat extends StatelessWidget {
  final String title;
  final String value;
  const ModalDataAlamat({Key? key, required this.title, required this.value})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.only(bottom: 8.0),
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: Color(0xffE7E7E7),
          ),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(
              fontSize: 14.0,
              fontWeight: bold,
            ),
          ),
          const SizedBox(
            height: 8.0,
          ),
          Text(
            value,
            style: const TextStyle(
              fontSize: 14.0,
              fontWeight: light,
            ),
          ),
        ],
      ),
    );
  }
}
