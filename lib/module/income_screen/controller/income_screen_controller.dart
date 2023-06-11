import 'package:flutter/material.dart';
import 'package:mobile_kurir_sbw/state_util.dart';
import '../view/income_screen_view.dart';

class IncomeScreenController extends State<IncomeScreenView>
    implements MvcController {
  static late IncomeScreenController instance;
  late IncomeScreenView view;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);

  DateTime selectedDate = DateTime.now();

  void changeMonth(int months) {
    setState(() {
      selectedDate = DateTime(selectedDate.year, selectedDate.month + months);
    });
  }

  List<DateTime> getMonthCalendarDays(DateTime date) {
    final firstDayOfMonth = DateTime(date.year, date.month, 1);
    final daysInMonth = DateTime(date.year, date.month + 1, 0).day;

    List<DateTime> calendarDays = [];

    for (var i = 0; i < daysInMonth; i++) {
      calendarDays.add(firstDayOfMonth.add(Duration(days: i)));
    }

    return calendarDays;
  }

  void handleDateSelected(DateTime selectedDate) {
    setState(() {
      selectedDate = selectedDate;
    });
    print('Date selected: $selectedDate');
    // Tambahkan logika atau aksi lain yang ingin Anda lakukan saat tanggal dipilih
  }
}
