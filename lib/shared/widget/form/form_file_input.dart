// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';
import 'package:mobile_kurir_sbw/core.dart';

class FormFileInput extends StatefulWidget {
  final String label;
  final String maxSize;
  const FormFileInput({Key? key, required this.label, this.maxSize = '0.5'})
      : super(key: key);

  @override
  State<FormFileInput> createState() => _FormFileInputState();
}

class _FormFileInputState extends State<FormFileInput> {
  File? selectedImage;

  final ImagePicker picker = ImagePicker();
  XFile? image;

  void pickImage() async {
    image = await picker.pickImage(source: ImageSource.gallery);
    setState(() {
      if (image != null) {
        selectedImage = File(image!.path);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.label,
          style: const TextStyle(
            fontSize: 14.0,
          ),
        ),
        const SizedBox(
          height: 4.0,
        ),
        GestureDetector(
          onTap: () async {
            pickImage();
          },
          child: Container(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            decoration: BoxDecoration(
              color: blueColor,
              borderRadius: BorderRadius.circular(4),
            ),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.file_open,
                  color: whiteColor,
                  size: 18,
                ),
                SizedBox(
                  width: 5.0,
                ),
                Text(
                  "Browse File",
                  style: TextStyle(
                    fontSize: 14.0,
                    fontWeight: FontWeight.bold,
                    color: whiteColor,
                  ),
                ),
              ],
            ),
          ),
        ),
        Text(
          "File type: png Max size: ${widget.maxSize} MB",
          style: TextStyle(
            fontSize: 14.0,
            fontWeight: light,
            color: Color(0xff888888),
          ),
        ),
      ],
    );
  }
}
