// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:mobile_kurir_sbw/core.dart';

class PackingCard extends StatelessWidget {
  final String title;
  final int qty;
  final int weigth;
  final String kategori;
  final String imgUrl;
  const PackingCard(
      {Key? key,
      required this.title,
      required this.qty,
      required this.weigth,
      required this.kategori,
      required this.imgUrl})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: Color(0xffE7E7E7),
          ),
        ),
      ),
      child: Row(
        children: [
          Image.asset(
            imgUrl,
            width: 85,
            height: 100,
          ),
          const SizedBox(
            width: 8.0,
          ),
          Expanded(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(title),
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 4,
                        vertical: 2,
                      ),
                      decoration: const BoxDecoration(color: greenColor),
                      child: Text(kategori),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 4.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("$qty (Box)"),
                    Text("$weigth Kg"),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
