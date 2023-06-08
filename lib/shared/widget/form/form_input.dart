// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:mobile_kurir_sbw/shared/theme/theme_config.dart';

class FormInput extends StatefulWidget {
  final String label;
  final TextEditingController? controller;
  final bool obsecureText;
  final bool showError;
  final String? errorText;

  const FormInput({
    Key? key,
    required this.label,
    this.controller,
    this.obsecureText = false,
    this.showError = false,
    this.errorText,
  }) : super(key: key);

  @override
  State<FormInput> createState() => _FormInputState();
}

class _FormInputState extends State<FormInput> {
  bool hide = true;

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
          obscureText: widget.obsecureText && hide,
          obscuringCharacter: "*",
          style: const TextStyle(color: blackColor),
          decoration: InputDecoration(
            errorText: widget.showError ? widget.errorText : null,
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
            suffixIcon: widget.obsecureText
                ? IconButton(
                    onPressed: () {
                      setState(() {
                        hide = !hide;
                      });
                    },
                    icon: Icon(hide
                        ? Icons.visibility_off_outlined
                        : Icons.visibility),
                  )
                : null,
          ),
        )
      ],
    );
  }
}
