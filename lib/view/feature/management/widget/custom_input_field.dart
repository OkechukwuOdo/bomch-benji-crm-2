import 'package:flutter/material.dart';

class CustomInputFormField extends StatelessWidget {
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final VoidCallback? ontapSufix;
  final String hintText;
  final TextInputType? keyboardType;
  final FormFieldValidator<String>? validator;
  final TextEditingController? controller;
  const CustomInputFormField(
      {super.key,
      this.prefixIcon,
      required this.hintText,
      this.suffixIcon,
      this.keyboardType,
      this.validator,
      this.controller,
      this.ontapSufix});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      // height: 60,
      child: TextFormField(
        controller: controller,
        validator: validator,
        keyboardType: keyboardType,
        decoration: InputDecoration(
            contentPadding:
                const EdgeInsets.symmetric(vertical: 20, horizontal: 17),
            prefixIcon: Padding(
              padding: const EdgeInsets.only(
                  left: 26.0, right: 13, top: 17, bottom: 17),
              child: prefixIcon,
            ),
            suffixIcon: GestureDetector(
              onTap: ontapSufix,
              child: Padding(
                padding: const EdgeInsets.only(right: 26.0),
                child: suffixIcon,
              ),
            ),
            // prefix: prefixIcon,
            hintText: hintText,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: const BorderSide(color: Color(0XFF828282), width: 3),
            ),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide: const BorderSide()),
            errorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide: const BorderSide()),
            focusedErrorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide: const BorderSide())),
      ),
    );
  }
}
