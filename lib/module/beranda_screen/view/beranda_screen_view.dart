import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:mobile_kurir_sbw/core.dart';
import 'package:mobile_kurir_sbw/module/beranda_screen/widget/show_modal.dart';

class BerandaScreenView extends StatefulWidget {
  const BerandaScreenView({Key? key}) : super(key: key);

  Widget build(context, BerandaScreenController controller) {
    controller.view = this;

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          foregroundColor: whiteColor,
          backgroundColor: greenColor2,
          title: const Text('Driver'),
          actions: [
            GestureDetector(
              onTap: () {
                controller.userActive = !controller.userActive;
                controller.setState(() {});
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
        drawer: Drawer(
          child: ListView(
            children: [
              UserAccountsDrawerHeader(
                accountName: const Text("Kirara Bernstein"),
                accountEmail: const Text("kirara@yahoo.com"),
                currentAccountPicture: const CircleAvatar(
                  backgroundImage: AssetImage('assets/images/user.png'),
                ),
                decoration: BoxDecoration(
                  color: Colors.blueGrey[900],
                ),
              ),
              ListTile(
                leading: const Icon(Icons.home),
                title: const Text("Home"),
                onTap: () => Get.to(const BerandaScreenView()),
              ),
              ListTile(
                leading: const Icon(Icons.balance),
                title: const Text("Balance"),
                onTap: () => Get.to(const BalanceScreenView()),
              ),
              ListTile(
                leading: const Icon(Icons.attach_money),
                title: const Text("Pendapatan"),
                onTap: () => Get.to(const IncomeScreenView()),
              ),
              ListTile(
                leading: const Icon(Icons.account_circle),
                title: const Text("Profil"),
                onTap: () => Get.to(const ProfilScreenView()),
              ),
              ListTile(
                leading: const Icon(Icons.help),
                title: const Text("Bantuan"),
                onTap: () => Get.to(const HelpScreenView()),
              ),
              ListTile(
                leading: const Icon(
                  Icons.logout,
                ),
                title: const Text("Logout"),
                onTap: () => Get.offAll(const LoginScreenView()),
              )
            ],
          ),
        ),
        body: Container(
          child: Stack(
            children: [
              Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      "assets/images/map.png",
                    ),
                    fit: BoxFit.cover,
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
                        onTap: () {
                          showModalBottomSheet(
                            context: context,
                            builder: (context) {
                              return ShowModal(
                                controller: controller,
                              );
                            },
                          );
                        },
                        child: Container(
                          height: 70.0,
                          width: 70.0,
                          padding: const EdgeInsets.all(10.0),
                          decoration: BoxDecoration(
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
                          icon: Icon(Icons.my_location),
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<BerandaScreenView> createState() => BerandaScreenController();
}
