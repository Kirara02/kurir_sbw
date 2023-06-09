import 'package:flutter/material.dart';
import 'package:mobile_kurir_sbw/core.dart';

class FormSelectInput extends StatefulWidget {
  final String label;
  final List<String> options;
  final String? selectedOption;
  final ValueChanged<String?> onChanged;

  const FormSelectInput({
    Key? key,
    required this.label,
    required this.options,
    required this.selectedOption,
    required this.onChanged,
  }) : super(key: key);

  @override
  State<FormSelectInput> createState() => _FormSelectState();
}

class _FormSelectState extends State<FormSelectInput> {
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
        DropdownButtonFormField<String>(
          value: widget.selectedOption,
          onChanged: widget.onChanged,
          items: widget.options.map((String option) {
            return DropdownMenuItem<String>(
              value: option,
              child: Text(option),
            );
          }).toList(),
          decoration: InputDecoration(
            filled: true,
            fillColor: greyColor,
            hintText: "-- Select --",
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
