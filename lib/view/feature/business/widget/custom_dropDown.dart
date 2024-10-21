import 'package:benji_crm_v2/view/styles/color_style.dart';
import 'package:benji_crm_v2/view/styles/text_style.dart';
import 'package:flutter/material.dart';

class CustomDropDownField extends StatelessWidget {
    final String title;
  final String hintText;
  const CustomDropDownField({
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
        DropdownButtonFormField(
          dropdownColor: AppColors.whiteColor,
          style: Apptext.black_500_18,
          // value: selectedValue,
          items: ["Food", "Clothes", "Beverages"]
              .map<DropdownMenuItem<String>>((String item) {
            return DropdownMenuItem<String>(
              value: item,
              child: Text(item),
            );
          }).toList(),
          onChanged: (v) {
            // selectedValue = v;
            // print(selectedValue);
          },
          decoration: InputDecoration(
              contentPadding:
                  const EdgeInsets.symmetric(horizontal: 13, vertical: 11),
              hintText: hintText,
              hintStyle: const TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 14,
                  color: Color(0XFF979797)),
              fillColor: AppColors.whiteColor,
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