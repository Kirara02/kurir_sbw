// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:mobile_kurir_sbw/core.dart';
import 'package:mobile_kurir_sbw/module/beranda_screen/widget/success_modal.dart';

class ImageUploadModal extends StatefulWidget {
  final BerandaScreenController controller;
  const ImageUploadModal({Key? key, required this.controller})
      : super(key: key);

  @override
  State<ImageUploadModal> createState() => _ImageUploadModalState();
}

class _ImageUploadModalState extends State<ImageUploadModal> {
  File? _imageFile;

  Future<void> _pickImage(ImageSource source) async {
    final picker = ImagePicker();
    final pickedImage = await picker.pickImage(source: source);
    setState(() {
      if (pickedImage != null) {
        _imageFile = File(pickedImage.path);
        widget.controller.imageFile = _imageFile;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16.0),
      ),
      child: Container(
        padding: const EdgeInsets.all(20.0),
        child: IntrinsicHeight(
          child: _imageFile == null
              ? Column(
                  children: [
                    GestureDetector(
                      onTap: () async {
                        await _pickImage(ImageSource.gallery);
                      },
                      child: Container(
                        height: 130,
                        padding: const EdgeInsets.all(16.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16.0),
                          border: Border.all(
                            color: const Color(0xffE7E7E7),
                          ),
                        ),
                        child: const Center(
                          child: Text(
                            'Upload Bukti Penerimaan Barang',
                            style: TextStyle(
                              fontSize: 16.0,
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 8.0,
                    ),
                    const Text(
                      "Maks 0.5 mb",
                      style: TextStyle(
                        color: Color(0xff575757),
                        fontSize: 14.0,
                      ),
                    ),
                  ],
                )
              : Column(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(4),
                      child: Image.file(
                        _imageFile!,
                        fit: BoxFit.fitWidth,
                        height: 130,
                      ),
                    ),
                    const SizedBox(
                      height: 8.0,
                    ),
                    const Text(
                      "Maks 0.5 mb",
                      style: TextStyle(
                        color: Color(0xff575757),
                        fontSize: 14.0,
                      ),
                    ),
                    const SizedBox(
                      height: 8.0,
                    ),
                    GestureDetector(
                      onTap: () async {
                        await _pickImage(ImageSource.gallery);
                      },
                      child: Container(
                        padding: const EdgeInsets.symmetric(vertical: 8.0),
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: yellowColor,
                            width: 2,
                          ),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: const Center(
                          child: Text(
                            'Upload Ulang',
                            style: TextStyle(
                              fontSize: 15.0,
                              fontWeight: bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 8.0,
                    ),
                    Container(
                      padding: const EdgeInsets.all(8.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6),
                        border: Border.all(color: yellowColor),
                      ),
                      child: const TextField(
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.symmetric(vertical: 8.0),
                          hintText: 'Masukan Catatan Disini',
                          hintStyle: TextStyle(
                            fontSize: 16.0,
                            color: Colors.grey,
                          ),
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 8.0,
                    ),
                    GestureDetector(
                      onTap: () {
                        showDialog(
                          context: context,
                          builder: (context) {
                            return const SuccessModal();
                          },
                        );
                      },
                      child: Container(
                        padding: const EdgeInsets.symmetric(vertical: 8.0),
                        decoration: BoxDecoration(
                          color: greenColor,
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        child: const Center(
                          child: Text(
                            'Simpan',
                            style: TextStyle(
                              fontSize: 20.0,
                              color: whiteColor,
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
        ),
      ),
    );
  }
}
