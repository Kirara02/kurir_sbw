import 'package:flutter/material.dart';
import 'package:mobile_kurir_sbw/core.dart';

class Register2ScreenView extends StatefulWidget {
  const Register2ScreenView({Key? key}) : super(key: key);

  Widget build(context, Register2ScreenController controller) {
    controller.view = this;

    return Scaffold(
      body: Center(
        child: SafeArea(
          child: SingleChildScrollView(
            child: Container(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  const Text.rich(
                    textAlign: TextAlign.center,
                    TextSpan(
                      style: TextStyle(
                        fontSize: 26,
                      ),
                      children: [
                        TextSpan(
                          text: "Pendaftaran Driver\n",
                          style: TextStyle(
                            color: greenColor2,
                            fontWeight: regular,
                          ),
                        ),
                        TextSpan(
                          text: "Setia Bhakti Wanita",
                          style: TextStyle(
                            color: blackColor,
                            fontWeight: bold,
                          ),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 24.0,
                  ),
                  const FormInput(label: "NOPOL"),
                  const SizedBox(
                    height: 24.0,
                  ),
                  const FormInput(label: "No Rekening"),
                  const SizedBox(
                    height: 24.0,
                  ),
                  FormSelectInput(
                    label: "Nama Bank",
                    options: const [
                      'Bank Central Asia (BCA)',
                      'Bank Negara Indonesia (BNI)',
                      'Bank Rakyat Indonesia (BRI)',
                      'Bank Mandiri',
                    ],
                    selectedOption: controller.selectedBank,
                    onChanged: (value) {
                      controller.selectedBank = value;
                    },
                  ),
                  const SizedBox(
                    height: 24.0,
                  ),
                  const FormInput(label: "Nama Rekening"),
                  const SizedBox(
                    height: 24.0,
                  ),
                  const FormInput(
                    label: "Password",
                    obsecureText: true,
                  ),
                  const SizedBox(
                    height: 24.0,
                  ),
                  const FormInput(
                    label: "Konfirmasi Password",
                    obsecureText: true,
                  ),
                  const SizedBox(
                    height: 24.0,
                  ),
                  const FormFileInput(label: "Foto Profil"),
                  const SizedBox(
                    height: 24.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ButtonMin(
                        title: "Kembali",
                        isfilled: false,
                        onPressed: () => Get.back(),
                      ),
                      const ButtonMin(
                        title: "Daftar",
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  @override
  State<Register2ScreenView> createState() => Register2ScreenController();
}
