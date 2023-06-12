import 'package:flutter/material.dart';
import 'package:mobile_kurir_sbw/core.dart';

class HelpScreenView extends StatefulWidget {
  const HelpScreenView({Key? key}) : super(key: key);

  Widget build(context, HelpScreenController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            IconButton(
              onPressed: () => Get.back(),
              icon: const Icon(Icons.arrow_back_ios),
            ),
            const Text("Bantuan"),
          ],
        ),
        automaticallyImplyLeading: false,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              children: [
                ListView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: controller.mainMenu.length,
                  itemBuilder: (BuildContext context, int index) {
                    String menu = controller.mainMenu[index];
                    List<String> submenu = controller.subMenu[menu]!;

                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        GestureDetector(
                          onTap: () => controller.toggleSubMenu(menu),
                          child: Container(
                            margin: const EdgeInsets.only(top: 24.0),
                            padding: const EdgeInsets.all(8.0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(4.0),
                              border: Border.all(
                                color: Color(0xffE1E1E1),
                              ),
                              color: controller.selectedParent == menu
                                  ? Color(0xff585858)
                                  : Color(0xffffff),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  menu,
                                  style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16.0,
                                  ),
                                ),
                                Icon(
                                  controller.selectedParent == menu
                                      ? Icons.keyboard_arrow_right
                                      : Icons.keyboard_arrow_down,
                                  size: 24,
                                )
                              ],
                            ),
                          ),
                        ),
                        if (controller.selectedParent == menu)
                          ListView.builder(
                            shrinkWrap: true,
                            physics: NeverScrollableScrollPhysics(),
                            itemCount: submenu.length,
                            itemBuilder: (BuildContext context, int subIndex) {
                              String item = submenu[subIndex];
                              return Container(
                                padding: const EdgeInsets.all(8.0),
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Color(0xffE1E1E1),
                                  ),
                                ),
                                child: Text(item),
                              );
                            },
                          ),
                      ],
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  State<HelpScreenView> createState() => HelpScreenController();
}
