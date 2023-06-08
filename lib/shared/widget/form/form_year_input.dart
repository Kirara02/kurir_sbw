import 'package:flutter/material.dart';
import 'package:mobile_kurir_sbw/core.dart';

class FormYearInput extends StatefulWidget {
  final String label;
  final TextEditingController? controller;
  final bool showError;
  final String? errorText;

  const FormYearInput({
    Key? key,
    required this.label,
    this.controller,
    this.showError = false,
    this.errorText,
  }) : super(key: key);

  @override
  State<FormYearInput> createState() => _FormYearInputState();
}

class _FormYearInputState extends State<FormYearInput> {
  DateTime? _selectedDate;

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2100),
    );

    if (picked != null && picked != _selectedDate) {
      setState(() {
        _selectedDate = picked;
        widget.controller?.text = picked.year
            .toString(); // Update text field value with the year only
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
          style: const TextStyle(color: Colors.black),
          decoration: InputDecoration(
            errorText: widget.showError ? widget.errorText : null,
            hintText: "YYYY",
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
                _selectDate(context);
              },
              icon: Icon(Icons.calendar_today),
            ),
          ),
        )
      ],
    );
  }
}
