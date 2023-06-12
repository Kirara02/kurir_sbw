import 'package:flutter/material.dart';
import 'package:mobile_kurir_sbw/state_util.dart';
import '../view/emergency_history_screen_view.dart';

class EmergencyHistoryScreenController extends State<EmergencyHistoryScreenView>
    implements MvcController {
  static late EmergencyHistoryScreenController instance;
  late EmergencyHistoryScreenView view;

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
          'ongkir': 50000,
          'status': 'Done',
          'jenis_kendaraan': 'Motor',
          'date': DateTime(2023, 6, 2, 08),
          'alamat_pengiriman':
              'Jl. Smea, Wonokromo, Kec. Wonokromo, Kota SBY, Jawa Timur 60243',
          'alamat_pengambilan':
              'Jl. Jemur Andayani No.55, Jemur Wonosari, Kec. Wonocolo, Kota SBY, Jawa Timur 60237',
          'lokasi_terakhir':
              'Jl. Jemur Andayani No.55, Jemur Wonosari, Kec. Wonocolo, Kota SBY, Jawa Timur 60237',
          'alasan_emergency': 'Ban saya terjadi kendala ketika pengantaran'
        },
      ],
    },
    {
      'date': DateTime(2023, 6, 1),
      'orders': [
        {
          'order_id': 'TRX00002',
          'ongkir': 50000,
          'status': 'Ditolak',
          'jenis_kendaraan': 'Motor',
          'date': DateTime(2023, 6, 1, 08),
          'alamat_pengiriman':
              'Jl. Smea, Wonokromo, Kec. Wonokromo, Kota SBY, Jawa Timur 60243',
          'alamat_pengambilan':
              'Jl. Jemur Andayani No.55, Jemur Wonosari, Kec. Wonocolo, Kota SBY, Jawa Timur 60237',
          'lokasi_terakhir':
              'Jl. Jemur Andayani No.55, Jemur Wonosari, Kec. Wonocolo, Kota SBY, Jawa Timur 60237',
          'alasan_emergency': 'Ban saya terjadi kendala ketika pengantaran'
        },
      ],
    },
  ];
}
