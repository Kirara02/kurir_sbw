import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:mobile_kurir_sbw/core.dart';
import 'package:mobile_kurir_sbw/shared/widget/card/income_card.dart';

class IncomeScreenView extends StatefulWidget {
  const IncomeScreenView({Key? key}) : super(key: key);

  Widget build(context, IncomeScreenController controller) {
    controller.view = this;

    final dateFormat = DateFormat('d');

    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.all(16.0),
              decoration: const BoxDecoration(
                color: greenColor2,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(16),
                  bottomRight: Radius.circular(16),
                ),
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      GestureDetector(
                        onTap: () => Get.back(),
                        child: const Icon(
                          Icons.arrow_back_ios,
                          size: 20,
                          color: whiteColor,
                        ),
                      ),
                      const SizedBox(
                        width: 8.0,
                      ),
                      const Text(
                        "Pendapatan",
                        style: TextStyle(
                          fontSize: 20.0,
                          color: whiteColor,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 24.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        child: const Icon(
                          Icons.keyboard_arrow_left,
                          size: 28,
                          color: whiteColor,
                        ),
                        onTap: () => controller.changeMonth(-1),
                      ),
                      Text(
                        DateFormat('MMMM, yyyy')
                            .format(controller.selectedDate),
                        style: const TextStyle(
                          fontSize: 14.0,
                          fontWeight: FontWeight.bold,
                          color: whiteColor,
                        ),
                      ),
                      GestureDetector(
                        child: const Icon(
                          Icons.keyboard_arrow_right,
                          size: 28,
                          color: whiteColor,
                        ),
                        onTap: () => controller.changeMonth(1),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 24.0,
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width,
                    height: 60.0,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: controller
                          .getMonthCalendarDays(controller.selectedDate)
                          .length,
                      itemBuilder: (context, index) {
                        final date = controller.getMonthCalendarDays(
                            controller.selectedDate)[index];
                        final isSelected =
                            controller.selectedDate.day == date.day &&
                                controller.selectedDate.month == date.month &&
                                controller.selectedDate.year == date.year;

                        return GestureDetector(
                          onTap: () {
                            controller.handleDateSelected(date);
                          },
                          child: Container(
                            margin: const EdgeInsets.only(
                              right: 28,
                            ),
                            alignment: Alignment.center,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  DateFormat('EEE').format(date),
                                  style: const TextStyle(
                                    fontSize: 14.0,
                                    fontWeight: FontWeight.bold,
                                    color: whiteColor,
                                  ),
                                ),
                                const SizedBox(
                                  height: 4.0,
                                ),
                                Container(
                                  padding: const EdgeInsets.all(5.0),
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: isSelected
                                        ? Colors.yellow
                                        : Colors.transparent,
                                  ),
                                  child: Text(
                                    dateFormat.format(date),
                                    style: const TextStyle(
                                      fontSize: 14.0,
                                      fontWeight: FontWeight.bold,
                                      color: whiteColor,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  const SizedBox(
                    height: 24.0,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 16.0,
            ),
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Column(
                children: [
                  IncomeCard(
                    title: "Harian, 12 April 2023",
                    description: '20X Pengantaran',
                    price: 350000,
                  ),
                  SizedBox(
                    height: 16.0,
                  ),
                  IncomeCard(
                    title: "Mingguan, 12 - 18 April 2023",
                    description: '40X Pengantaran',
                    price: 850000,
                  ),
                  SizedBox(
                    height: 16.0,
                  ),
                  IncomeCard(
                    title: "Pendapatan Bulan April, 2023",
                    description: '120X Pengantaran',
                    price: 4500000,
                  ),
                  SizedBox(
                    height: 16.0,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  State<IncomeScreenView> createState() => IncomeScreenController();
}
