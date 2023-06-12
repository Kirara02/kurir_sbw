// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:mobile_kurir_sbw/shared/theme/theme_config.dart';

class IncomeCard extends StatelessWidget {
  final String title;
  final String description;
  final int price;
  const IncomeCard(
      {Key? key,
      required this.title,
      required this.description,
      required this.price})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        top: 16.0,
        bottom: 16.0,
        right: 16.0,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.0),
        border: Border.all(color: yellowColor2),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontWeight: semiBold,
                  ),
                ),
                const SizedBox(
                  height: 4.0,
                ),
                Text(description),
              ],
            ),
          ),
          Text(
            "Rp $price",
            style: const TextStyle(
              fontSize: 16.0,
              fontWeight: bold,
              color: blueColor2,
            ),
          ),
        ],
      ),
    );
  }
}
