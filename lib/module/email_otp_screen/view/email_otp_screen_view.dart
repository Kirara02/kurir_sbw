import 'package:flutter/material.dart';
import 'package:mobile_kurir_sbw/core.dart';

class EmailOtpScreenView extends StatefulWidget {
  final String email;
  const EmailOtpScreenView({Key? key, required this.email}) : super(key: key);

  Widget build(context, EmailOtpScreenController controller) {
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
                          text: "Lupa Password Driver\n",
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
                  Text.rich(
                    textAlign: TextAlign.center,
                    TextSpan(
                      style: const TextStyle(
                        color: Color(0xff383838),
                      ),
                      children: [
                        const TextSpan(
                          text:
                              "Kami sudah mengirimkan kode verifikasi ke alamat email ",
                        ),
                        TextSpan(
                          text: email,
                          style: const TextStyle(
                            fontWeight: bold,
                          ),
                        ),
                        const TextSpan(
                          text: " silahkan cek dan isi kode verifikasi",
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 24.0,
                  ),
                  FormInput(
                    label: "Kode Verifikasi",
                    controller: controller.kodeController,
                    showError: controller.showErrorMessage,
                    errorText: controller.errorMessage,
                  ),
                  const SizedBox(
                    height: 24.0,
                  ),
                  ButtonFull(
                    title: "Konfirmasi",
                    onPressed: () {
                      controller.validateInput();
                    },
                  ),
                  const SizedBox(
                    height: 24.0,
                  ),
                  ButtonFull(
                    title: "Kirim Kode Lagi",
                    isfilled: false,
                    onPressed: () {},
                  ),
                  const SizedBox(
                    height: 24.0,
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: Center(
                      child: InkWell(
                        onTap: () => Get.to(const LoginScreenView()),
                        child: const Text(
                          "Masuk",
                          style: TextStyle(
                            fontSize: 13.0,
                            fontWeight: light,
                          ),
                        ),
                      ),
                    ),
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
  State<EmailOtpScreenView> createState() => EmailOtpScreenController();
}
