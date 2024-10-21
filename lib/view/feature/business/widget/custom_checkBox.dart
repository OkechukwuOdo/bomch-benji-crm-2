import 'package:benji_crm_v2/view/styles/color_style.dart';
import 'package:benji_crm_v2/view/styles/text_style.dart';
import 'package:flutter/material.dart';

class CustomCheckBox extends StatefulWidget {
  final String title;
  const CustomCheckBox({super.key, required this.title});

  @override
  State<CustomCheckBox> createState() => _CustomCheckBoxState();
}

class _CustomCheckBoxState extends State<CustomCheckBox> {
  bool isClicked=false;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(widget.title,style: Apptext.black_400_14,),
      leading: GestureDetector(
        onTap: () {
          setState(() {
               isClicked=!isClicked;
          });
        },
        child: Container(
          width: 20,height: 20,
          decoration: BoxDecoration(
            border: Border.all(width: 1,color: AppColors.orangeColor),
            color:isClicked? AppColors.orangeColor:Colors.transparent,
            borderRadius: BorderRadius.circular(6)
          ),
          child:  Visibility(
            visible: isClicked,
            child: const Center(child: Icon(Icons.check,color: AppColors.whiteColor,
            size: 18,))),
        ),
      ),
      
    );
  }
}