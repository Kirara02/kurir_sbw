// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:mobile_kurir_sbw/core.dart';

class EmergencyDriverModal extends StatelessWidget {
  const EmergencyDriverModal({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16.0),
      ),
      insetPadding: const EdgeInsets.symmetric(
        horizontal: 10.0,
        vertical: 75.0,
      ),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 50.0),
        child: Wrap(
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Mohon menunggu driver pengganti sampai ditempat anda',
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: medium,
                    ),
                  ),
                  const SizedBox(
                    height: 16.0,
                  ),
                  Container(
                    height: 4,
                    width: 100,
                    decoration: const BoxDecoration(
                      border: Border(
                        bottom: BorderSide(
                          color: Color(0xffE7E7E7),
                        ),
                        top: BorderSide(
                          color: Color(0xffE7E7E7),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 16.0,
                  ),
                  const Text(
                    "Data Driver Pengganti",
                    style: TextStyle(
                      fontWeight: bold,
                    ),
                  ),
                  const SizedBox(
                    height: 16.0,
                  ),
                  const ModalData(title: 'ID Driver', value: 'CUS0000001'),
                  const SizedBox(
                    height: 16.0,
                  ),
                  const ModalData(title: 'Nama Lengkap', value: 'Riswanto'),
                  const SizedBox(
                    height: 16.0,
                  ),
                  const ModalData(
                      title: 'No Whatsapp', value: '0821-2345-6789'),
                  const SizedBox(
                    height: 16.0,
                  ),
                  Container(
                    padding: const EdgeInsets.only(bottom: 8.0),
                    decoration: const BoxDecoration(
                      border: Border(
                        bottom: BorderSide(
                          color: Color(0xffE7E7E7),
                        ),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text('Foto'),
                        Image.asset(
                          'assets/images/user.png',
                          width: 60,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 16.0,
                  ),
                  const ModalDataAlamat(
                    title: 'Posisi Terakhir Driver',
                    value:
                        'Jl. Taman Kutisari No.4, Kutisari, Kec. Tenggilis Mejoyo, Kota SBY, Jawa Timur 60291',
                  ),
                  const SizedBox(
                    height: 16.0,
                  ),
                  ButtonFull(
                    title: 'Hubungi Driver',
                    onPressed: () {},
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
