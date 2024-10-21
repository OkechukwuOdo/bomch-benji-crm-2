import 'package:benji_crm_v2/view/styles/color_style.dart';
import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class CustomPhoneFied extends StatelessWidget {
  final Widget? suffixIcon;
    final FormFieldValidator<String>? validator;
  final TextEditingController? controller;
  final String hintText;
  const CustomPhoneFied({
    super.key,
    required this.hintText,
    this.suffixIcon, this.validator, this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: 80,
      child: IntlPhoneField(
        // validator: validator,
        disableLengthCheck: true,
        // languageCode: "99",
          dropdownIcon: const Icon(Icons.phone),
          // initialValue: '',
          keyboardType: TextInputType.phone,
          showCountryFlag: false,
          decoration: InputDecoration(
              contentPadding:
                  const EdgeInsets.symmetric(vertical: 20, horizontal: 22),
              hintText: hintText,
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: const BorderSide()),
              border: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  borderSide: BorderSide(color: Color(0XFFF1F1FF), width: 0.5)),
              filled: true,
              fillColor: AppColors.phoneInputFillColor)),
    );
  }
}
