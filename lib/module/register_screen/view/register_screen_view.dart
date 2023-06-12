import 'package:flutter/material.dart';
import 'package:mobile_kurir_sbw/core.dart';

class RegisterScreenView extends StatefulWidget {
  const RegisterScreenView({Key? key}) : super(key: key);

  Widget build(context, RegisterScreenController controller) {
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
                    const FormInput(
                      label: "Nama Lengkap",
                      // controller: controller.emailController,
                      // showError: controller.showErrorMessage,
                    ),
                    const SizedBox(
                      height: 24.0,
                    ),
                    const FormInput(
                      label: "Email",
                      // controller: controller.emailController,
                      // showError: controller.showErrorMessage,
                    ),
                    const SizedBox(
                      height: 24.0,
                    ),
                    const FormDateInput(label: 'Tanggal Lahir'),
                    const SizedBox(
                      height: 24.0,
                    ),
                    const FormTextarea(label: "Alamat"),
                    const SizedBox(
                      height: 24.0,
                    ),
                    const FormInput(
                      label: "No Whatsapp",

                      // showError: controller.showErrorMessage,
                      // controller: controller.passwordController,
                    ),
                    const SizedBox(
                      height: 24.0,
                    ),
                    const FormInput(
                      label: "No Imei/Device Id",

                      // showError: controller.showErrorMessage,
                      // controller: controller.passwordController,
                    ),
                    const SizedBox(
                      height: 24.0,
                    ),
                    const FormInput(
                      label: "SIM",

                      // showError: controller.showErrorMessage,
                      // controller: controller.passwordController,
                    ),
                    const SizedBox(
                      height: 24.0,
                    ),
                    const FormInput(
                      label: "NIK",

                      // showError: controller.showErrorMessage,
                      // controller: controller.passwordController,
                    ),
                    const SizedBox(
                      height: 24.0,
                    ),
                    const FormInput(
                      label: "Nama Kendaraan",

                      // showError: controller.showErrorMessage,
                      // controller: controller.passwordController,
                    ),
                    const SizedBox(
                      height: 24.0,
                    ),
                    const FormYearInput(label: "Tahun Kendaraan"),
                    const SizedBox(
                      height: 24.0,
                    ),
                    const SizedBox(
                      width: double.infinity,
                      child: Text(
                        "Tahap 1/2",
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          fontSize: 14.0,
                          color: Color(0xff979797),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 24.0,
                    ),
                    ButtonFull(
                      title: "Selanjutnya",
                      onPressed: () => Get.to(const Register2ScreenView()),
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
      ),
    );
  }

  @override
  State<RegisterScreenView> createState() => RegisterScreenController();
}
