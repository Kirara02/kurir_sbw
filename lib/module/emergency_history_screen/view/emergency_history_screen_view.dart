import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:mobile_kurir_sbw/core.dart';
import '../controller/emergency_history_screen_controller.dart';

class EmergencyHistoryScreenView extends StatefulWidget {
  const EmergencyHistoryScreenView({Key? key}) : super(key: key);

  Widget build(context, EmergencyHistoryScreenController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: greenColor2,
        title: Row(
          children: [
            GestureDetector(
              onTap: () => Get.back(),
              child: const Icon(
                Icons.arrow_back,
                color: whiteColor,
              ),
            ),
            const SizedBox(
              width: 8.0,
            ),
            const Text(
              "Riwayat Data Emergency",
              style: TextStyle(
                fontSize: 20.0,
                color: whiteColor,
              ),
            ),
          ],
        ),
      ),
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 10.0,
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: TextFormField(
                            decoration: InputDecoration(
                              contentPadding: const EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 12.0),
                              hintText: 'Search...',
                              hintStyle: const TextStyle(
                                color: greenColor2,
                              ),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(4.0),
                                borderSide: const BorderSide(
                                  color: Color(0xffe1e1e1),
                                ),
                              ),
                              suffixIcon: Icon(
                                Icons.search,
                                color: greenColor2,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(width: 4.0),
                        GestureDetector(
                          onTap: () {
                            showModalBottomSheet(
                              isScrollControlled: true,
                              context: context,
                              builder: (context) {
                                return ModalFilter();
                              },
                            );
                          },
                          child: Icon(Icons.tune_outlined),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 16.0,
                    ),
                  ],
                ),
              ),
              Expanded(
                child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: controller.orderHistory.length,
                  itemBuilder: (context, index) {
                    final entry = controller.orderHistory[index];
                    final date = entry['date'];
                    final orders = entry['orders'];

                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding:
                              const EdgeInsets.only(top: 16.0, bottom: 12.0),
                          child: Text(
                            DateFormat('dd MMMM yyyy').format(date),
                            style: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        ListView.builder(
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          itemCount: orders.length,
                          itemBuilder: (context, index) {
                            final order = orders[index];
                            return Column(
                              children: [
                                Container(
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
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
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
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                "# ${order['order_id']}",
                                                style: const TextStyle(
                                                  color: blackColor,
                                                  fontWeight: bold,
                                                ),
                                              ),
                                              const SizedBox(
                                                height: 2.0,
                                              ),
                                              Text(
                                                "Detail Transaksi",
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
                                                "Ongkir: Rp ${order['ongkir']}",
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
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Container(
                                                padding:
                                                    const EdgeInsets.symmetric(
                                                  horizontal: 8.0,
                                                  vertical: 4.0,
                                                ),
                                                decoration: BoxDecoration(
                                                    color: order['status'] ==
                                                            'Done'
                                                        ? greenColor2
                                                        : (order['status'] ==
                                                                'Progress'
                                                            ? blackColor
                                                            : redColor),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            28)),
                                                child: Center(
                                                  child: Text(
                                                    order['status'],
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
                                                DateFormat('dd MMM yyyy')
                                                    .format(date),
                                                style: const TextStyle(
                                                  fontSize: 10.0,
                                                  color: blackColor,
                                                ),
                                              ),
                                              Text(
                                                DateFormat('hh:mm a')
                                                    .format(date),
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
                                                    orderId: order['order_id'],
                                                    jenisKendaraan: order[
                                                        'jenis_kendaraan'],
                                                    date: order['date'],
                                                    status: order['status'],
                                                    ongkir: order['ongkir'],
                                                  );
                                                },
                                              );
                                            },
                                            child: Container(
                                              padding:
                                                  const EdgeInsets.all(5.0),
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
                                ),
                                Container(
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
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Icon(
                                        Icons.location_on_outlined,
                                        color: greenColor,
                                      ),
                                      SizedBox(
                                        width: 8.0,
                                      ),
                                      Expanded(
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "Alamat Pengiriman",
                                              style: TextStyle(
                                                fontSize: 14.0,
                                                fontWeight: medium,
                                              ),
                                            ),
                                            SizedBox(
                                              height: 4.0,
                                            ),
                                            Text(
                                              order['alamat_pengiriman'],
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
                                ),
                                Container(
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
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Icon(
                                        Icons.location_on_outlined,
                                        color: greenColor,
                                      ),
                                      SizedBox(
                                        width: 8.0,
                                      ),
                                      Expanded(
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "Alamat Pengambilan",
                                              style: TextStyle(
                                                fontSize: 14.0,
                                                fontWeight: medium,
                                              ),
                                            ),
                                            SizedBox(
                                              height: 4.0,
                                            ),
                                            Text(
                                              order['alamat_pengambilan'],
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
                                ),
                                Container(
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
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Icon(
                                        Icons.location_on_outlined,
                                        color: greenColor,
                                      ),
                                      SizedBox(
                                        width: 8.0,
                                      ),
                                      Expanded(
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "Lokasi Terakhir",
                                              style: TextStyle(
                                                fontSize: 14.0,
                                                fontWeight: medium,
                                              ),
                                            ),
                                            SizedBox(
                                              height: 4.0,
                                            ),
                                            Text(
                                              order['lokasi_terakhir'],
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
                                ),
                                Container(
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
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Icon(
                                        Icons.archive,
                                        color: greenColor,
                                      ),
                                      SizedBox(
                                        width: 8.0,
                                      ),
                                      Expanded(
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "Alasan Emergency",
                                              style: TextStyle(
                                                fontSize: 14.0,
                                                fontWeight: medium,
                                              ),
                                            ),
                                            SizedBox(
                                              height: 4.0,
                                            ),
                                            Text(
                                              order['alasan_emergency'],
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
                                ),
                              ],
                            );
                          },
                        ),
                      ],
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<EmergencyHistoryScreenView> createState() =>
      EmergencyHistoryScreenController();
}
