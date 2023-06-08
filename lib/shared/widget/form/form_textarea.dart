import 'package:flutter/material.dart';
import 'package:mobile_kurir_sbw/core.dart';

class FormTextarea extends StatefulWidget {
  final String label;
  final TextEditingController? controller;

  const FormTextarea({
    Key? key,
    required this.label,
    this.controller,
  }) : super(key: key);

  @override
  State<FormTextarea> createState() => _FormTextareaState();
}

class _FormTextareaState extends State<FormTextarea> {
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
        TextField(
          controller: widget.controller,
          maxLines: 5, // Mengatur jumlah baris yang ditampilkan
          decoration: InputDecoration(
            filled: true,
            fillColor: greyColor,
            contentPadding: const EdgeInsets.symmetric(
              horizontal: 15,
              vertical: 10,
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: const BorderSide(
                color: greyColor2,
              ),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: const BorderSide(color: greyColor2),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: const BorderSide(color: greyColor2),
            ),
          ),
        ),
      ],
    );
  }
}
