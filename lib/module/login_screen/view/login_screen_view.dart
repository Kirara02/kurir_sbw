import 'package:flutter/material.dart';
import 'package:mobile_kurir_sbw/core.dart';

class LoginScreenView extends StatefulWidget {
  const LoginScreenView({Key? key}) : super(key: key);

  Widget build(context, LoginScreenController controller) {
    controller.view = this;

    return Scaffold(
      body: SafeArea(
        child: Center(
          child: SafeArea(
            child: SingleChildScrollView(
              child: Container(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text.rich(
                      textAlign: TextAlign.center,
                      TextSpan(
                        style: TextStyle(
                          fontSize: 26,
                        ),
                        children: [
                          TextSpan(
                            text: "Login Driver\n",
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
                    FormInput(
                      label: "Email",
                      controller: controller.emailController,
                      showError: controller.showErrorMessage,
                      errorText: controller.errorMessage,
                    ),
                    const SizedBox(
                      height: 24.0,
                    ),
                    FormInput(
                      label: "Password",
                      obsecureText: true,
                      showError: controller.showErrorMessage,
                      errorText: controller.errorMessage,
                      controller: controller.passwordController,
                    ),
                    const SizedBox(
                      height: 24.0,
                    ),
                    GestureDetector(
                      onTap: () {
                        controller.isChecked = !controller.isChecked;
                        controller.refresh();
                      },
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            height: 26,
                            width: 26,
                            decoration: BoxDecoration(
                              color: controller.isChecked
                                  ? greenColor
                                  : Colors.transparent,
                              borderRadius: BorderRadius.circular(8.0),
                              border: Border.all(
                                color: greenColor,
                                width: 2,
                              ),
                            ),
                            child: controller.isChecked
                                ? const Icon(
                                    Icons.check,
                                    color: Colors
                                        .white, // Sesuaikan warna centang sesuai kebutuhan Anda
                                    size:
                                        16.0, // Sesuaikan ukuran centang sesuai kebutuhan Anda
                                  )
                                : null,
                          ),
                          const SizedBox(
                            width: 3.0,
                          ),
                          const Text(
                            "Ingat Password",
                            style: TextStyle(
                              fontSize: 14.0,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 24.0,
                    ),
                    ButtonFull(
                      title: "MASUK",
                      onPressed: () {
                        controller.validateInput();
                      },
                    ),
                    const SizedBox(
                      height: 24.0,
                    ),
                    ButtonFull(
                      title: "DAFTAR",
                      isfilled: false,
                      onPressed: () => Get.to(const RegisterScreenView()),
                    ),
                    const SizedBox(
                      height: 24.0,
                    ),
                    SizedBox(
                      width: double.infinity,
                      child: Center(
                        child: InkWell(
                          onTap: () => Get.to(const ForgotPasswordScreenView()),
                          child: const Text(
                            "Lupa Password",
                            style: TextStyle(
                              fontSize: 13.0,
                              fontWeight: light,
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 24.0,
                    ),
                    const ButtonFull(title: "Lihat Device id"),
                    const SizedBox(
                      height: 60.0,
                    ),
                    const Text(
                      "versi 0.0.1",
                      style: TextStyle(
                        fontSize: 14.0,
                        color: Color(0xff979797),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  @override
  State<LoginScreenView> createState() => LoginScreenController();
}
