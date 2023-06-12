import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:mobile_kurir_sbw/core.dart';
import 'package:mobile_kurir_sbw/module/order_history_screen/widget/modal_filter.dart';
import 'package:mobile_kurir_sbw/shared/widget/card/order_history_card.dart';
import '../controller/order_history_screen_controller.dart';

class OrderHistoryScreenView extends StatefulWidget {
  const OrderHistoryScreenView({Key? key}) : super(key: key);

  Widget build(context, OrderHistoryScreenController controller) {
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
              "Riwayat Order",
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
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Row(
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
                            return OrderHistoryCard(
                              orderid: order['order_id'],
                              jenisKendaraan: order['jenis_kendaraan'],
                              ongkir: order['ongkir'],
                              status: order['status'],
                              date: order['date'],
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
  State<OrderHistoryScreenView> createState() => OrderHistoryScreenController();
}
