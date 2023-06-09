import 'package:flutter/material.dart';
import 'package:mobile_kurir_sbw/core.dart';

class ChatBubble extends StatelessWidget {
  final String message;
  final String time;
  final bool isMe;
  final bool isChecked;

  const ChatBubble(
      {required this.message,
      required this.time,
      required this.isMe,
      required this.isChecked});

  @override
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 4.0),
      alignment: isMe ? Alignment.centerRight : Alignment.centerLeft,
      child: IntrinsicWidth(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Flexible(
              child: Container(
                padding: EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                  color: isMe ? greyColor3 : Colors.grey[100],
                  borderRadius: BorderRadius.circular(16.0),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Wrap(
                      children: [
                        Text(
                          message,
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 8.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          time,
                          style: const TextStyle(
                            color: Color(0xff979797),
                          ),
                        ),
                        SizedBox(width: 8.0),
                        isChecked
                            ? Icon(
                                Icons.done_all,
                                color: greenColor2,
                              )
                            : SizedBox(),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
