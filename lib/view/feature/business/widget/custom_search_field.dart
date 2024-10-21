
import 'package:benji_crm_v2/view/styles/color_style.dart';
import 'package:flutter/material.dart';

class CustomSearchField extends StatelessWidget {
  const CustomSearchField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        fillColor: AppColors.whiteColor,
        filled: true,
        hintText: "Search",
        prefixIcon: const Icon(Icons.search),
        suffixIcon: Image.asset("assets/icons/search_Icon.png"),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(25),
          borderSide: BorderSide.none
        )
      ),
    );
  }
}