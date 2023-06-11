import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:mobile_kurir_sbw/core.dart';

class IncomeScreenView extends StatefulWidget {
  const IncomeScreenView({Key? key}) : super(key: key);

  Widget build(context, IncomeScreenController controller) {
    controller.view = this;

    final dateFormat = DateFormat('d');

    return SafeArea(
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.all(16.0),
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
                        onTap: () => Get.to(const BerandaScreenView()),
                        child: const Icon(
                          Icons.arrow_back_ios,
                          size: 20,
                          color: whiteColor,
                        ),
                      ),
                      const Text(
                        "Pendapatan",
                        style: const TextStyle(
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
                          fontWeight: semiBold,
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
                    child: Expanded(
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: controller
                              .getMonthCalendarDays(controller.selectedDate)
                              .map((date) {
                            bool isSelected = controller.selectedDate.day ==
                                    date.day &&
                                controller.selectedDate.month == date.month &&
                                controller.selectedDate.year == date.year;
                            bool isToday = DateTime.now().day == date.day &&
                                DateTime.now().month == date.month &&
                                DateTime.now().year == date.year;

                            return GestureDetector(
                              onTap: () => controller.handleDateSelected(date),
                              child: Container(
                                width: 60,
                                height: 60,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      DateFormat('EEE').format(date),
                                      style: const TextStyle(
                                        fontSize: 14.0,
                                        fontWeight: semiBold,
                                        color: whiteColor,
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 4.0,
                                    ),
                                    Container(
                                      padding: const EdgeInsets.all(4.0),
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: isSelected
                                            ? yellowColor
                                            : (isToday
                                                ? redColor
                                                : Colors.transparent),
                                      ),
                                      child: Text(
                                        dateFormat.format(date),
                                        style: const TextStyle(
                                          fontSize: 14.0,
                                          fontWeight: semiBold,
                                          color: whiteColor,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            );
                          }).toList(),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 24.0,
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
