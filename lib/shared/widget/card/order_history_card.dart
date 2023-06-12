// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:mobile_kurir_sbw/core.dart';
import 'package:mobile_kurir_sbw/module/order_history_screen/widget/modal_detail_order.dart';

class OrderHistoryCard extends StatelessWidget {
  final String orderid;
  final String jenisKendaraan;
  final int ongkir;
  final String status;
  final DateTime date;
  const OrderHistoryCard(
      {Key? key,
      required this.orderid,
      required this.jenisKendaraan,
      required this.ongkir,
      required this.status,
      required this.date})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 10.0,
        vertical: 13.0,
      ),
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: Color(0xffe8e8e8),
          ),
          left: BorderSide(
            color: blackColor,
            width: 5,
          ),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                padding: const EdgeInsets.all(5.0),
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: blueColor2,
                ),
                child: const Icon(
                  Icons.person_outline,
                  color: whiteColor,
                ),
              ),
              const SizedBox(
                width: 10.0,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "# $orderid",
                    style: const TextStyle(
                      color: blackColor,
                      fontWeight: bold,
                    ),
                  ),
                  const SizedBox(
                    height: 2.0,
                  ),
                  Text(
                    "Jenis Kendaraan: $jenisKendaraan",
                    style: const TextStyle(
                      color: blackColor,
                      fontSize: 12,
                      fontWeight: light,
                    ),
                  ),
                  const SizedBox(
                    height: 8.0,
                  ),
                  Text(
                    "Ongkir: Rp $ongkir",
                    style: const TextStyle(
                      color: blackColor,
                      fontSize: 12,
                      fontWeight: bold,
                    ),
                  ),
                ],
              ),
            ],
          ),
          Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 8.0,
                      vertical: 4.0,
                    ),
                    decoration: BoxDecoration(
                        color: status == 'Done' ? greenColor2 : blackColor,
                        borderRadius: BorderRadius.circular(28)),
                    child: Center(
                      child: Text(
                        status,
                        style: const TextStyle(
                          fontSize: 10,
                          color: whiteColor,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 8.0,
                  ),
                  Text(
                    DateFormat('dd MMM yyyy').format(date),
                    style: const TextStyle(
                      fontSize: 10.0,
                      color: blackColor,
                    ),
                  ),
                  Text(
                    DateFormat('hh:mm a').format(date),
                    style: const TextStyle(
                      fontSize: 10.0,
                      color: blackColor,
                      fontWeight: bold,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                width: 16.0,
              ),
              GestureDetector(
                onTap: () {
                  showModalBottomSheet(
                    isScrollControlled: true,
                    context: context,
                    builder: (context) {
                      return ModalDetailOrder(
                        orderId: orderid,
                        jenisKendaraan: jenisKendaraan,
                        date: date,
                        status: status,
                        ongkir: ongkir,
                      );
                    },
                  );
                },
                child: Container(
                  padding: const EdgeInsets.all(5.0),
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: greenColor2,
                  ),
                  child: const Icon(
                    Icons.keyboard_arrow_right,
                    color: whiteColor,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
