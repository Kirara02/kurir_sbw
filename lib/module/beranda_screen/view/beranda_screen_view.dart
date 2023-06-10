import 'package:flutter/material.dart';
import 'package:mobile_kurir_sbw/core.dart';
import 'package:mobile_kurir_sbw/module/beranda_screen/widget/show_modal.dart';

class BerandaScreenView extends StatefulWidget {
  const BerandaScreenView({Key? key}) : super(key: key);

  Widget build(context, BerandaScreenController controller) {
    controller.view = this;

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          foregroundColor: whiteColor,
          backgroundColor: greenColor2,
          title: const Text('Driver'),
          leading: IconButton(
            onPressed: () => Get.to(const BalanceScreenView()),
            icon: const Icon(Icons.menu),
          ),
          actions: [
            GestureDetector(
              onTap: () {
                controller.userActive = !controller.userActive;
                controller.refresh();
              },
              child: Container(
                padding: const EdgeInsets.all(10.0),
                margin: const EdgeInsets.only(right: 10.0),
                decoration: BoxDecoration(
                  color: controller.userActive == true ? greenColor : redColor,
                  borderRadius: BorderRadius.circular(6),
                ),
                child: Text(
                  controller.userActive == true ? 'AKTIF' : 'NON-AKTIF',
                  style: const TextStyle(
                    fontWeight: bold,
                  ),
                ),
              ),
            )
          ],
        ),
        body: Stack(
          children: [
            GestureDetector(
              onTap: () {
                showModalBottomSheet(
                  isScrollControlled: true,
                  context: context,
                  builder: (context) {
                    return ShowModal(
                      controller: controller,
                    );
                  },
                );
              },
              child: Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      "assets/images/map.png",
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Positioned(
              top: 16.0,
              left: 16.0,
              right: 16.0,
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        height: 70.0,
                        width: 70.0,
                        padding: const EdgeInsets.all(10.0),
                        decoration: const BoxDecoration(
                          color: whiteColor,
                          shape: BoxShape.circle,
                        ),
                        child: Image.asset('assets/images/alert.png'),
                      ),
                    ),
                    Container(
                      height: 42.0,
                      width: 42.0,
                      decoration: BoxDecoration(
                        color: whiteColor,
                        border: Border.all(
                          color: blackColor,
                          width: 1,
                        ),
                      ),
                      child: IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.my_location),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  @override
  State<BerandaScreenView> createState() => BerandaScreenController();
}
