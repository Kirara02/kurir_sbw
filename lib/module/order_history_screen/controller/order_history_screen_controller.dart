import 'package:flutter/material.dart';
import 'package:mobile_kurir_sbw/state_util.dart';
import '../view/order_history_screen_view.dart';

class OrderHistoryScreenController extends State<OrderHistoryScreenView>
    implements MvcController {
  static late OrderHistoryScreenController instance;
  late OrderHistoryScreenView view;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);

  List<Map<String, dynamic>> orderHistory = [
    {
      'date': DateTime(2023, 6, 2),
      'orders': [
        {
          'order_id': 'TRX00004',
          'jenis_kendaraan': 'Motor',
          'ongkir': 50000,
          'status': 'Progress',
          'date': DateTime(2023, 6, 2, 08)
        },
        {
          'order_id': 'TRX00003',
          'jenis_kendaraan': 'Mobil',
          'ongkir': 70000,
          'status': 'Done',
          'date': DateTime(2023, 6, 2, 08)
        },
      ],
    },
    {
      'date': DateTime(2023, 6, 1),
      'orders': [
        {
          'order_id': 'TRX00002',
          'jenis_kendaraan': 'Motor',
          'ongkir': 50000,
          'status': 'Done',
          'date': DateTime(2023, 6, 1, 08)
        },
        {
          'order_id': 'TRX00001',
          'jenis_kendaraan': 'Mobil',
          'ongkir': 70000,
          'status': 'Done',
          'date': DateTime(2023, 6, 1, 08)
        },
      ],
    },
  ];
}
