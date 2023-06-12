// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:mobile_kurir_sbw/core.dart';
import 'package:mobile_kurir_sbw/shared/widget/card/modal_data.dart';
import 'package:mobile_kurir_sbw/shared/widget/card/modal_data_alamat.dart';

class DetailUserModal extends StatelessWidget {
  const DetailUserModal({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        left: 8.0,
        right: 8.0,
        top: 20.0,
        bottom: 32.0,
      ),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(16.0),
          topRight: Radius.circular(16.0),
        ),
      ),
      child: SingleChildScrollView(
        child: Column(
          children: [
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
              "Customer",
              style: TextStyle(
                fontWeight: bold,
                fontSize: 14.0,
              ),
            ),
            const SizedBox(
              height: 16.0,
            ),
            const ModalData(title: 'ID Customer', value: 'CUS0000001'),
            const SizedBox(
              height: 16.0,
            ),
            const ModalData(title: 'Nama Lengkap', value: 'Riswanto'),
            const SizedBox(
              height: 16.0,
            ),
            const ModalData(title: 'No Whatsapp', value: '0821-2345-6789'),
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
            const Text(
              "Barang Bawaan",
              style: TextStyle(
                fontWeight: bold,
                fontSize: 14.0,
              ),
            ),
            const SizedBox(
              height: 16.0,
            ),
            const PackingCard(
              title: "Indomie Goreng",
              qty: 1,
              weigth: 3,
              kategori: "Makanan",
              imgUrl: "assets/images/barang1.png",
            ),
            const SizedBox(
              height: 16.0,
            ),
            const PackingCard(
              title: "Kratindaeng",
              qty: 1,
              weigth: 7,
              kategori: "Makanan",
              imgUrl: "assets/images/barang2.png",
            ),
            const SizedBox(
              height: 16.0,
            ),
            ModalData(title: 'Jumlah Dus', value: '2 Dus'),
            const SizedBox(
              height: 16.0,
            ),
            const ModalDataAlamat(
              title: 'Alamat Costumer',
              value:
                  'Jl. Taman Kutisari No.4, Kutisari, Kec. Tenggilis Mejoyo, Kota SBY, Jawa Timur 60291',
            ),
            const SizedBox(
              height: 16.0,
            ),
            GestureDetector(
              onTap: () => Get.back(),
              child: Container(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                decoration: BoxDecoration(
                  color: yellowColor,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: const Center(
                  child: Text(
                    'Kembali',
                    style: TextStyle(
                      fontSize: 20.0,
                      color: blackColor,
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
