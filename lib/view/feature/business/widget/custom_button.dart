
import 'package:benji_crm_v2/view/styles/color_style.dart';
import 'package:benji_crm_v2/view/styles/text_style.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String title;
  const CustomButton({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      decoration: BoxDecoration(
        color: AppColors.orangeColor,
        borderRadius: BorderRadius.circular(20)
      ),
      child:  Center(
        child: Text(title,style: Apptext.white_600_20,),
      ),
    );
  }
}