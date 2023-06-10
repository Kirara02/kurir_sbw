// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:mobile_kurir_sbw/shared/theme/theme_config.dart';

class FormDateInput extends StatefulWidget {
  final String label;
  final TextEditingController? controller;
  final bool showError;
  final String? errorText;
  const FormDateInput(
      {Key? key,
      required this.label,
      this.controller,
      this.showError = false,
      this.errorText})
      : super(key: key);

  @override
  State<FormDateInput> createState() => _FormDateInputState();
}

class _FormDateInputState extends State<FormDateInput> {
  DateTime? _selectedDate;

  Future<void> selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(), // Tanggal awal yang ditampilkan
      firstDate: DateTime(2000), // Batas tanggal awal
      lastDate: DateTime(2100), // Batas tanggal akhir
    );

    if (picked != null && picked != _selectedDate) {
      setState(() {
        _selectedDate = picked;
        widget.controller?.text = picked.toString(); // Update text field value
      });
    }
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
        TextFormField(
          controller: widget.controller,
          style: const TextStyle(color: blackColor),
          decoration: InputDecoration(
            errorText: widget.showError ? widget.errorText : null,
            hintText: "DD/MM/YYYY",
            constraints: const BoxConstraints(
              minHeight: 40,
            ),
            filled: true,
            fillColor: greyColor,
            contentPadding: const EdgeInsets.symmetric(
              horizontal: 15,
              vertical: 5,
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
            suffixIcon: IconButton(
              onPressed: () {
                selectDate(context);
              },
              icon: const Icon(Icons.calendar_today),
            ),
          ),
        )
      ],
    );
  }
}
