// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:mobile_kurir_sbw/core.dart';

class ModalFilter extends StatelessWidget {
  const ModalFilter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: const EdgeInsets.only(
          left: 8.0,
          right: 8.0,
          top: 20.0,
          bottom: 32.0,
        ),
        decoration: const BoxDecoration(
          color: whiteColor,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(16.0),
            topRight: Radius.circular(16.0),
          ),
        ),
        child: Column(
          children: [
            Container(
              height: 4,
              width: 100,
              decoration: const BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: Color(0xffE7E7E7),
                  ),
                  top: BorderSide(
                    color: Color(0xffE7E7E7),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 16.0,
            ),
            FormDateInput(label: 'Dari Tanggal'),
            const SizedBox(
              height: 16.0,
            ),
            FormDateInput(label: 'Ke Tanggal'),
            const SizedBox(
              height: 16.0,
            ),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              decoration: BoxDecoration(
                color: greenColor2,
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: Center(
                child: Text(
                  'Terapkan',
                  style: const TextStyle(
                    color: whiteColor,
                    fontSize: 20.0,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
