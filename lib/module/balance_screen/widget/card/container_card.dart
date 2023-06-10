// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:mobile_kurir_sbw/shared/theme/theme_config.dart';

class ContainerCard extends StatelessWidget {
  final String title;
  final String value;
  final String title2;
  final String value2;
  const ContainerCard(
      {Key? key,
      required this.title,
      required this.value,
      required this.title2,
      required this.value2})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.0),
        border: Border.all(
          color: Color(0xffe7e7e7),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: const TextStyle(
                  fontSize: 14.0,
                  fontWeight: semiBold,
                  color: orangeColor,
                ),
              ),
              const SizedBox(
                height: 4.0,
              ),
              Text(
                value,
                style: const TextStyle(
                  fontSize: 16.0,
                  fontWeight: semiBold,
                  color: blueColor2,
                ),
              ),
            ],
          ),
          Container(
            height: 85.5,
            width: 2,
            decoration: const BoxDecoration(
              color: Color(0xffE7E7E7),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title2,
                style: const TextStyle(
                  fontSize: 14.0,
                  fontWeight: semiBold,
                  color: orangeColor,
                ),
              ),
              const SizedBox(
                height: 4.0,
              ),
              Text(
                value2,
                style: const TextStyle(
                  fontSize: 16.0,
                  fontWeight: semiBold,
                  color: blueColor2,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
