// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:mobile_kurir_sbw/core.dart';
import 'package:mobile_kurir_sbw/module/beranda_screen/widget/accept_modal.dart';

class ShowModal extends StatefulWidget {
  final BerandaScreenController controller;
  const ShowModal({Key? key, required this.controller}) : super(key: key);

  @override
  State<ShowModal> createState() => _ShowModalState();
}

class _ShowModalState extends State<ShowModal> {
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
          topLeft: Radius.circular(16),
          topRight: Radius.circular(16),
        ),
      ),
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
          Container(
            width: MediaQuery.of(context).size.width,
            padding: const EdgeInsets.symmetric(
              horizontal: 8.0,
              vertical: 12.0,
            ),
            decoration: BoxDecoration(
              color: greyColor3,
              borderRadius: BorderRadius.circular(8.0),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  'Order',
                  style: TextStyle(
                    fontWeight: bold,
                  ),
                ),
                Text(
                  'Antar Barang',
                  style: TextStyle(
                    fontWeight: bold,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 16.0,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Icon(
                Icons.location_on_outlined,
                color: greenColor,
              ),
              const SizedBox(
                width: 8.0,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Alamat Pengambilan",
                      style: TextStyle(
                        fontSize: 14.0,
                        fontWeight: medium,
                      ),
                    ),
                    const SizedBox(
                      height: 4.0,
                    ),
                    Text(
                      "Jl. Jemur Andayani No.55, Jemur Wonosari, Kec. Wonocolo, Kota SBY, Jawa Timur 60237 ",
                      style: TextStyle(
                        fontSize: 14.0,
                        fontWeight: light,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 16.0,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Icon(
                Icons.location_on_outlined,
                color: greenColor,
              ),
              const SizedBox(
                width: 8.0,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Alamat Pengiriman",
                      style: TextStyle(
                        fontSize: 14.0,
                        fontWeight: medium,
                      ),
                    ),
                    const SizedBox(
                      height: 4.0,
                    ),
                    Text(
                      "Jl. Smea, Wonokromo, Kec. Wonokromo, Kota SBY, Jawa Timur 60243 ",
                      style: TextStyle(
                        fontSize: 14.0,
                        fontWeight: light,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
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
              children: const [
                Text('Jumlah Dus'),
                Text(
                  '2 Dus',
                  style: TextStyle(
                    fontWeight: bold,
                  ),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 16.0,
          ),
          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 16.0,
              vertical: 8.0,
            ),
            decoration: BoxDecoration(
              border: Border.all(
                color: const Color(0xffFFFAC4),
              ),
              color: const Color(0xffE7E7E7),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      'Pembayaran: Transfer',
                      style: const TextStyle(
                        fontWeight: bold,
                      ),
                    ),
                    const SizedBox(
                      height: 4.0,
                    ),
                    Text(
                      'Jarak: 3.3 KM',
                      style: const TextStyle(
                        fontWeight: bold,
                      ),
                    ),
                    const SizedBox(
                      height: 4.0,
                    ),
                    Text(
                      'Jumlah Dus',
                      style: const TextStyle(
                        fontWeight: bold,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  width: 10.0,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: const [
                    Text(
                      'Harga',
                    ),
                    const SizedBox(
                      height: 4.0,
                    ),
                    Text(
                      'Rp 8,000',
                      style: const TextStyle(
                        fontWeight: bold,
                        fontSize: 18.0,
                      ),
                    ),
                    const SizedBox(
                      height: 4.0,
                    ),
                    Text(
                      '2 Dus',
                      style: const TextStyle(
                        fontWeight: bold,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          const SizedBox(
            height: 16.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ButtonMin(
                title: 'Terima',
                onPressed: () {
                  showModalBottomSheet(
                    context: context,
                    builder: (context) {
                      return AcceptModal(
                        controller: widget.controller,
                      );
                    },
                  );
                },
              ),
              ButtonMin(
                title: 'Tolak (5)',
                onPressed: () => Get.back(),
                isfilled: false,
              ),
            ],
          )
        ],
      ),
    );
  }
}
