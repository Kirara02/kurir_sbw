import 'package:flutter/material.dart';
import 'package:mobile_kurir_sbw/core.dart';
import 'package:mobile_kurir_sbw/shared/widget/card/chat_bubble.dart';

class ChatScreenView extends StatefulWidget {
  const ChatScreenView({Key? key}) : super(key: key);

  Widget build(context, ChatScreenController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        foregroundColor: whiteColor,
        backgroundColor: greenColor2,
        title: Row(
          children: [
            IconButton(
              onPressed: () => Get.back(),
              icon: const Icon(Icons.arrow_back),
            ),
            const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Riswanto",
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: medium,
                  ),
                ),
                Text(
                  "Online",
                  style: TextStyle(
                    fontSize: 15.0,
                  ),
                ),
              ],
            ),
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.phone_outlined,
            ),
          )
        ],
        automaticallyImplyLeading: false,
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView(
              padding: const EdgeInsets.all(16.0),
              children: const [
                ChatBubble(
                    message: 'Antar sesuai lokasi?',
                    isMe: true,
                    time: '7.30 PM',
                    isChecked: true),
                ChatBubble(
                    message: 'Iya...',
                    isMe: false,
                    time: '7.35 PM',
                    isChecked: false),
                ChatBubble(
                    message: 'Oke siap.....',
                    isMe: true,
                    time: '7.40 PM',
                    isChecked: true),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.all(10.0),
            decoration: const BoxDecoration(
              color: greenColor,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: TextFormField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Ketik pesan anda...',
                      hintStyle: const TextStyle(
                        color: Color(0xffD9D9D9),
                      ),
                      prefixIcon: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.camera_alt,
                          color: Color(0xffD9D9D9),
                        ),
                      ),
                      suffixIcon: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.send_sharp,
                          color: Color(0xffD9D9D9),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  @override
  State<ChatScreenView> createState() => ChatScreenController();
}
