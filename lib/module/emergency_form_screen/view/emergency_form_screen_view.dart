import 'package:flutter/material.dart';
import 'package:mobile_kurir_sbw/core.dart';
import 'package:mobile_kurir_sbw/module/beranda_screen/widget/loading_modal.dart';

class EmergencyFormScreenView extends StatefulWidget {
  const EmergencyFormScreenView({Key? key}) : super(key: key);

  Widget build(context, EmergencyFormScreenController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            GestureDetector(
              onTap: () => Get.offAll(const BerandaScreenView()),
              child: const Icon(
                Icons.arrow_back_ios,
                size: 20,
              ),
            ),
            const SizedBox(
              width: 8.0,
            ),
            const Text("Kembali"),
          ],
        ),
        automaticallyImplyLeading: false,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(16.0),
            child: Center(
              child: Column(
                children: [
                  Text(
                    "Data Emergency",
                    style: TextStyle(
                      fontSize: 24.0,
                      fontWeight: bold,
                      color: blackColor,
                    ),
                  ),
                  const SizedBox(
                    height: 24.0,
                  ),
                  FormInput(label: 'Masukan Alasan Emergency'),
                  const SizedBox(
                    height: 24.0,
                  ),
                  FormInput(label: 'Lokasi Terakhir'),
                  const SizedBox(
                    height: 24.0,
                  ),
                  FormFileInput(
                    label: 'Upload Foto/Video',
                    maxSize: '15',
                  ),
                  const SizedBox(
                    height: 23.0,
                  ),
                  ButtonFull(
                    title: 'Laporkan Ke Admin',
                    onPressed: () {
                      Get.back();
                      showDialog(
                        context: context,
                        builder: (context) {
                          return const LoadingModal();
                        },
                      );
                    },
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  @override
  State<EmergencyFormScreenView> createState() =>
      EmergencyFormScreenController();
}
