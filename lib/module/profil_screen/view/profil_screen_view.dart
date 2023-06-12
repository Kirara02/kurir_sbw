import 'package:flutter/material.dart';
import 'package:mobile_kurir_sbw/core.dart';

class ProfilScreenView extends StatefulWidget {
  const ProfilScreenView({Key? key}) : super(key: key);

  Widget build(context, ProfilScreenController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            GestureDetector(
              onTap: () => Get.back(),
              child: const Icon(
                Icons.arrow_back_ios,
                size: 20,
              ),
            ),
            const SizedBox(
              width: 8.0,
            ),
            const Text("Profil"),
          ],
        ),
        automaticallyImplyLeading: false,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                Container(
                  alignment: Alignment.center,
                  child: Image.asset(
                    'assets/images/user.png',
                    width: 120,
                    height: 120,
                  ),
                ),
                const SizedBox(
                  height: 24.0,
                ),
                Container(
                  padding: const EdgeInsets.only(bottom: 8.0),
                  decoration: const BoxDecoration(
                      border: Border(
                    bottom: BorderSide(color: yellowColor2),
                  )),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Nama Driver'),
                      Text(
                        'John Doe',
                        style: const TextStyle(
                          fontWeight: bold,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 24.0,
                ),
                Container(
                  padding: const EdgeInsets.only(bottom: 8.0),
                  decoration: const BoxDecoration(
                      border: Border(
                    bottom: BorderSide(color: yellowColor2),
                  )),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('No Driver'),
                      Text(
                        'DRI0000001',
                        style: const TextStyle(
                          fontWeight: bold,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 24.0,
                ),
                Container(
                  padding: const EdgeInsets.only(bottom: 8.0),
                  decoration: const BoxDecoration(
                    border: Border(
                      bottom: BorderSide(color: yellowColor2),
                    ),
                  ),
                  child: const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Alamat Driver',
                        style: const TextStyle(
                          fontWeight: bold,
                        ),
                      ),
                      const SizedBox(
                        height: 4.0,
                      ),
                      Text(
                        'Jl. Jemursari Sel. I No.15, Jemur Wonosari, Kec. Wonocolo, Kota SBY, Jawa Timur 60237',
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  State<ProfilScreenView> createState() => ProfilScreenController();
}
