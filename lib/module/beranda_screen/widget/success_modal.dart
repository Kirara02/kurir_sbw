// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:mobile_kurir_sbw/core.dart';

class SuccessModal extends StatelessWidget {
  const SuccessModal({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16.0),
      ),
      child: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 27,
          vertical: 17,
        ),
        child: IntrinsicHeight(
          child: Column(
            children: [
              const Text(
                "TRANSAKSI TELAH SELESAI TERIMAKASIH",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 14.0,
                ),
              ),
              const SizedBox(
                height: 8.0,
              ),
              GestureDetector(
                onTap: () {
                  Get.to(const BerandaScreenView());
                },
                child: Container(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  decoration: BoxDecoration(
                    color: greenColor,
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: const Center(
                    child: Text(
                      'Selesai',
                      style: TextStyle(
                        fontSize: 20.0,
                        color: whiteColor,
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
