// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:mobile_kurir_sbw/core.dart';

class EmergencyConfirmModal extends StatelessWidget {
  const EmergencyConfirmModal({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      contentPadding: EdgeInsets.zero,
      backgroundColor: Colors.transparent,
      content: Column(
        mainAxisSize: MainAxisSize.min, // Tambahkan baris ini
        children: [
          const Text(
            "ANDA INGIN MELANJUTKAN EMERGENCY",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 21.0,
              fontWeight: FontWeight.bold, // Ubah bold menjadi FontWeight.bold
              color: whiteColor,
            ),
          ),
          const SizedBox(
            height: 3.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min, // Tambahkan baris ini
            children: [
              ButtonMin(
                  title: 'Terima',
                  onPressed: () {
                    Get.back();
                    Get.to(const EmergencyFormScreenView());
                  }),
              const SizedBox(
                width: 16.0,
              ),
              InkWell(
                onTap: () {},
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 8, horizontal: 24),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(color: greenColor),
                    color: redColor,
                  ),
                  child: const Center(
                    child: Text(
                      'Tolak (10)',
                      style: TextStyle(
                        fontSize: 22.0,
                        color: whiteColor,
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
