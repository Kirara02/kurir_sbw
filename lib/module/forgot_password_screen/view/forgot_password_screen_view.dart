import 'package:flutter/material.dart';
import 'package:mobile_kurir_sbw/core.dart';

class ForgotPasswordScreenView extends StatefulWidget {
  const ForgotPasswordScreenView({Key? key}) : super(key: key);

  Widget build(context, ForgotPasswordScreenController controller) {
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
                  const Text(
                    "Masukkan alamat email yang Anda daftarkan",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 14.0,
                      color: Color(0xff383838),
                    ),
                  ),
                  const SizedBox(
                    height: 24.0,
                  ),
                  FormInput(
                    label: "Email",
                    controller: controller.emailController,
                    errorText: controller.errorMessage,
                    showError: controller.showErrorMessage,
                  ),
                  const SizedBox(
                    height: 24.0,
                  ),
                  ButtonFull(
                    title: "Kirim",
                    onPressed: () {
                      controller.validateInput();
                    },
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
  State<ForgotPasswordScreenView> createState() =>
      ForgotPasswordScreenController();
}
