// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:mobile_kurir_sbw/core.dart';
import 'package:mobile_kurir_sbw/module/beranda_screen/widget/emergency_result_modal.dart';

class LoadingModal extends StatelessWidget {
  const LoadingModal({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 3), () {
      // Pindah ke halaman berikutnya setelah 3 detik
      Get.back();
      showDialog(
        context: context,
        builder: (context) {
          return const EmergencyResultModal();
        },
      );
    });

    return const Dialog(
      backgroundColor: Colors.transparent,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            "Mohon Menunggu Aprroval dari Admin Kuris",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 19,
              color: whiteColor,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 16.0,
          ),
          SizedBox(
            width: 100,
            height: 100,
            child: CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation(Color(0xffED9819)),
              strokeWidth: 10.0,
            ),
          ),
        ],
      ),
    );
  }
}
