import 'package:benji_crm_v2/view/styles/text_style.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String title;
  final String hintText;
  const CustomTextField({
    super.key, required this.title, required this.hintText,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
         Text(title,style: Apptext.black_600_16,),
        const SizedBox(
          height: 14,
        ),
        TextFormField(
          decoration: InputDecoration(
              contentPadding:
                  const EdgeInsets.symmetric(horizontal: 13, vertical: 11),
              hintText: hintText,
              hintStyle: const TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 14,
                  color: Color(0XFF979797)
                  ),
              fillColor: const Color(0XFFF6F6F7),
              filled: true,
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(16),
                  borderSide: BorderSide.none),
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(16),
                  borderSide:
                      const BorderSide(width: 1.5, color: Color(0XFFE7E7E7)))),
        ),
      ],
    );
  }
}
