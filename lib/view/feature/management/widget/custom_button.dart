import 'package:benji_crm_v2/view/styles/color_style.dart';
import 'package:flutter/material.dart';


class CustomOutlineButton extends StatelessWidget {
  final VoidCallback onPressed;
  final Widget child;
  final Color? backgroundColor;
   final Color? borderColor;
  const CustomOutlineButton({super.key, 
  required this.onPressed,
   required this.child, 
   this.backgroundColor, this.borderColor});

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      style: OutlinedButton.styleFrom(
        foregroundColor:AppColors.whiteColor,
        fixedSize: Size(MediaQuery.of(context).size.width, 60),
        backgroundColor:backgroundColor?? AppColors.orangeColor,

        shape: RoundedRectangleBorder(
      
          borderRadius: BorderRadius.circular(20),
          
        )
      ),
      onPressed: onPressed, child: child);
  }
}