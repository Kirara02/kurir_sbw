// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:mobile_kurir_sbw/core.dart';
import 'package:mobile_kurir_sbw/shared/widget/card/modal_data.dart';
import 'package:mobile_kurir_sbw/shared/widget/card/modal_data_alamat.dart';

class ModalDetailOrder extends StatelessWidget {
  final String orderId;
  final String jenisKendaraan;
  final DateTime date;
  final int ongkir;
  final String status;
  const ModalDetailOrder(
      {Key? key,
      required this.orderId,
      required this.jenisKendaraan,
      required this.date,
      required this.ongkir,
      required this.status})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.only(
        left: 8.0,
        right: 8.0,
        top: 20.0,
        bottom: 32.0,
      ),
      decoration: const BoxDecoration(
        color: whiteColor,
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
              "Data Order",
              style: TextStyle(
                fontSize: 14.0,
                fontWeight: bold,
              ),
            ),
            const SizedBox(
              height: 16.0,
            ),
            ModalData(title: 'ID Transaksi', value: orderId),
            const SizedBox(
              height: 16.0,
            ),
            ModalData(title: 'Jenis Kendaraan', value: jenisKendaraan),
            const SizedBox(
              height: 16.0,
            ),
            const Text(
              "Data Pengiriman",
              style: TextStyle(
                fontSize: 14.0,
                fontWeight: bold,
              ),
            ),
            const SizedBox(
              height: 16.0,
            ),
            ModalData(
              title: 'Tanggal',
              value: DateFormat('dd MMM yyyy').format(date),
            ),
            const SizedBox(
              height: 16.0,
            ),
            const ModalDataAlamat(
              title: 'Alamat Pengambilan',
              value: 'Jalan xxxxxxxxxxxxxxxxxxxxxxx',
            ),
            const SizedBox(
              height: 16.0,
            ),
            const ModalDataAlamat(
              title: 'Alamat Pengiriman',
              value: 'Jalan xxxxxxxxxxxxxxxxxxxxxxx',
            ),
            const SizedBox(
              height: 16.0,
            ),
            ModalData(title: 'Status Pengiriman', value: status),
            const SizedBox(
              height: 16.0,
            ),
            ModalData(
              title: 'Tarif Ongkir',
              value: 'Rp $ongkir',
              color: redColor,
            ),
            const SizedBox(
              height: 16.0,
            ),
            ModalData(
              title: 'Pendapatan Bersama',
              value: 'Rp ${ongkir - 5000}',
              color: greenColor,
            ),
            const SizedBox(
              height: 16.0,
            ),
            const ModalData(
              title: 'Management Fee',
              value: 'Rp 5000',
              color: Colors.purple,
            ),
          ],
        ),
      ),
    );
  }
}
