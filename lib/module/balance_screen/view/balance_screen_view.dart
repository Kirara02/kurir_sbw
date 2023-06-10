import 'package:flutter/material.dart';
import 'package:mobile_kurir_sbw/core.dart';
import 'package:mobile_kurir_sbw/module/balance_screen/widget/card/container_card.dart';
import 'package:mobile_kurir_sbw/module/balance_screen/widget/menu/list_drawer_menu.dart';

class BalanceScreenView extends StatefulWidget {
  const BalanceScreenView({Key? key}) : super(key: key);

  Widget build(context, BalanceScreenController controller) {
    controller.view = this;

    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                Row(
                  children: [
                    InkWell(
                      onTap: () => Get.to(const BerandaScreenView()),
                      child: const Icon(Icons.arrow_back_ios),
                    ),
                    const Text(
                      "Balance",
                      style: TextStyle(
                        fontSize: 20.0,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 24.0,
                ),
                Container(
                  padding: const EdgeInsets.all(15.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    border: Border.all(
                      color: yellowColor2,
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Pendapatan Hari Ini",
                            style: TextStyle(
                              fontSize: 14.0,
                              fontWeight: semiBold,
                              color: orangeColor,
                            ),
                          ),
                          SizedBox(
                            height: 4.0,
                          ),
                          Text.rich(
                            style: const TextStyle(
                              color: blueColor2,
                            ),
                            TextSpan(
                              children: [
                                TextSpan(text: 'Rp '),
                                TextSpan(
                                  text: '70,000',
                                  style: const TextStyle(
                                    fontSize: 20,
                                    fontWeight: semiBold,
                                  ),
                                )
                              ],
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
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Pendapatan Bulan Ini",
                            style: TextStyle(
                              fontSize: 14.0,
                              fontWeight: semiBold,
                              color: orangeColor,
                            ),
                          ),
                          SizedBox(
                            height: 4.0,
                          ),
                          Text.rich(
                            style: const TextStyle(
                              color: blueColor2,
                            ),
                            TextSpan(
                              children: [
                                TextSpan(text: 'Rp '),
                                TextSpan(
                                  text: '512,838',
                                  style: const TextStyle(
                                    fontSize: 20,
                                    fontWeight: semiBold,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 24.0,
                ),
                ContainerCard(
                  title: 'Orderan Hari Ini',
                  value: '1',
                  title2: 'Orderan Bulan Ini',
                  value2: '30',
                ),
                SizedBox(
                  height: 24.0,
                ),
                ContainerCard(
                  title: 'Emergency Hari Ini',
                  value: '1',
                  title2: 'Emergency Bulan Ini',
                  value2: '30',
                ),
                const SizedBox(
                  height: 24.0,
                ),
                ListDrawerMenu(
                  title: 'Profil',
                  onTap: () => Get.to(const ProfilScreenView()),
                ),
                const SizedBox(
                  height: 24.0,
                ),
                ListDrawerMenu(
                  title: 'Pendapatan',
                  onTap: () => Get.to(const IncomeScreenView()),
                ),
                const SizedBox(
                  height: 24.0,
                ),
                ListDrawerMenu(
                  title: 'Riwayat Transaksi',
                  onTap: () => Get.to(const OrderHistoryScreenView()),
                ),
                const SizedBox(
                  height: 24.0,
                ),
                ListDrawerMenu(
                  title: 'Riwayat Emergency',
                  onTap: () => Get.to(const EmergencyHistoryScreenView()),
                ),
                const SizedBox(
                  height: 24.0,
                ),
                ListDrawerMenu(
                  title: 'Bantuan',
                  onTap: () => Get.to(const HelpScreenView()),
                ),
                const SizedBox(
                  height: 24.0,
                ),
                GestureDetector(
                  onTap: () => Get.offAll(const LoginScreenView()),
                  child: Container(
                    padding: const EdgeInsets.all(16.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: redColor,
                    ),
                    child: Center(
                      child: Text(
                        'Logout',
                        style: const TextStyle(
                          fontSize: 20.0,
                          color: whiteColor,
                          fontWeight: bold,
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  State<BalanceScreenView> createState() => BalanceScreenController();
}
