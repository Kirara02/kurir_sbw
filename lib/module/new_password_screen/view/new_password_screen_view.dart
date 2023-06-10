import 'package:flutter/material.dart';
import 'package:mobile_kurir_sbw/core.dart';

class NewPasswordScreenView extends StatefulWidget {
  const NewPasswordScreenView({Key? key}) : super(key: key);

  Widget build(context, NewPasswordScreenController controller) {
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
                    controller: controller.passwordController,
                    showError: controller.showErrorMessage,
                    obsecureText: true,
                    errorText: controller.errorMessage,
                    label: "Password",
                  ),
                  const SizedBox(
                    height: 24.0,
                  ),
                  FormInput(
                    controller: controller.konfirmasiController,
                    showError: controller.showErrorMessage,
                    obsecureText: true,
                    errorText: controller.errorMessage,
                    label: "Konfirmasi Password",
                  ),
                  const SizedBox(
                    height: 24.0,
                  ),
                  ButtonFull(
                    title: "Simpan",
                    onPressed: () => controller.validateInput(),
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
  State<NewPasswordScreenView> createState() => NewPasswordScreenController();
}
