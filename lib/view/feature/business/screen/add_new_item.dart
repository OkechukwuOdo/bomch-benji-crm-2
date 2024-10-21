
import 'package:benji_crm_v2/view/feature/business/widget/custom_button.dart';
import 'package:benji_crm_v2/view/feature/business/widget/custom_checkBox.dart';
import 'package:benji_crm_v2/view/feature/business/widget/custom_dropDown.dart';
import 'package:benji_crm_v2/view/feature/business/widget/custom_textFeild.dart';
import 'package:benji_crm_v2/view/styles/color_style.dart';
import 'package:benji_crm_v2/view/styles/text_style.dart';
import 'package:flutter/material.dart';

class AddNewItemScreen extends StatelessWidget {
  const AddNewItemScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: false,
        title: const Row(
          children: [
            Icon(Icons.arrow_back_ios_new_outlined),
            Text(
              "Add new Item",
              style: Apptext.black_500_24,
            )
          ],
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        children: [
          const SizedBox(height: 24,),
          Container(
            padding: const EdgeInsets.only(top: 40, bottom: 26),
            decoration: BoxDecoration(
                border: Border.all(width: 1.5, color: const Color(0XFF979797)),
                borderRadius: BorderRadius.circular(24),
                color: AppColors.whiteColor),
            child:  Column(
              children: [
                // Icon(Icons.upload_file_outlined),
                Image.asset("assets/icons/upload.png"),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  "Upload product image",
                  style: Apptext.black_400_12,
                )
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Additional Product images",style: TextStyle(
                color: Color(0XFF575757),
                fontSize: 16,fontWeight: FontWeight.w600),),
              Text("Optional",style: Apptext.grey3_400_12,),
            ],
          ),
          const SizedBox(
            height: 12,
          ),
          const Row(
            children: [
              AddBox(),
              SizedBox(
                width: 10,
              ),
              AddBox(),
              SizedBox(
                width: 10,
              ),
              AddBox(),
            ],
          ),
          const SizedBox(
            height: 36,
          ),
          const CustomDropDownField(title: 'Product Type', hintText: 'Select Product',),
          const SizedBox(
            height: 27,
          ),
          const CustomTextField(title: 'Product Name', hintText: 'Enter Name here',),
          const SizedBox(
            height: 27,
          ),
          const CustomTextField(title: 'Unit Price', hintText: 'Enter Prize here',),
          const SizedBox(
            height: 27,
          ),
          const CustomDropDownField(title: 'Quantity', hintText: 'Select the number',),
          const SizedBox(
            height: 27,
          ),
             const CustomDropDownField(title: 'Product Category', hintText: 'Select Category',),
          const SizedBox(
            height: 27,
          ),

          const CustomCheckBox(title: 'Free Delivery',),
           const SizedBox(
            // height: 27,
          ),
        
          const CustomCheckBox(title: 'Percentage discount',),
           const SizedBox(
            height: 27,
          ),
          const CustomTextField(title: 'Set Custom Discount', hintText: '% Enter Discount',),
          const SizedBox(
            height: 27,
          ),
          const ProductDescription(),
         
         
           const SizedBox(
            height: 27,
          ),
          const CustomCheckBox(title: 'Varieties/Extras',),
            const SizedBox(
            // height: 27,
          ),
          const CustomDropDownField(title: '', hintText: 'Set variety',),
            const SizedBox(
            height: 27,
          ),
          const CustomTextField(title: 'Product Name', hintText: 'Enter Name here',),
            const SizedBox(
            height: 27,
          ),
          const CustomTextField(title: 'Unit Price', hintText: 'Enter Price here',),
            const SizedBox(
            height: 73,
          ),
          const CustomButton(title: 'Update',),
          const SizedBox(
            height: 32,
          )
        ],
      ),
    );
  }
}

class ProductDescription extends StatelessWidget {
  const ProductDescription({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text("Product Description"),
         const SizedBox(
      height: 12,
    ),
     Container(
      padding: const EdgeInsets.all(14),
      height: 183,
      decoration: BoxDecoration(
          color: const Color(0XFFF0F7FF),
          borderRadius: BorderRadius.circular(16)),
      child: const TextField(
        maxLines: 10,
        decoration: InputDecoration(
            hintText: "Enter Product description here",
            border: OutlineInputBorder(borderSide: BorderSide.none)),
      ),
    ),
      ],
    );
  }
}
// class CustomCheckBox extends StatefulWidget {
//   final String title;
//   const CustomCheckBox({super.key, required this.title});

//   @override
//   State<CustomCheckBox> createState() => _CustomCheckBoxState();
// }

// class _CustomCheckBoxState extends State<CustomCheckBox> {
//   bool isClicked=false;
//   @override
//   Widget build(BuildContext context) {
//     return ListTile(
//       title: Text(widget.title,style: Apptext.black_400_14,),
//       leading: GestureDetector(
//         onTap: () {
//           setState(() {
//                isClicked=!isClicked;
//           });
//         },
//         child: Container(
//           width: 20,height: 20,
//           decoration: BoxDecoration(
//             border: Border.all(width: 1,color: AppColors.orangeColor),
//             color:isClicked? AppColors.orangeColor:Colors.transparent,
//             borderRadius: BorderRadius.circular(6)
//           ),
//           child:  Visibility(
//             visible: isClicked,
//             child: const Center(child: Icon(Icons.check,color: AppColors.whiteColor,
//             size: 18,))),
//         ),
//       ),
      
//     );
//   }
// }



// class CustomTextField extends StatelessWidget {
//   final String title;
//   final String hintText;
//   const CustomTextField({
//     super.key, required this.title, required this.hintText,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//          Text(title),
//         const SizedBox(
//           height: 14,
//         ),
//         TextFormField(
//           decoration: InputDecoration(
//               contentPadding:
//                   const EdgeInsets.symmetric(horizontal: 13, vertical: 11),
//               hintText: hintText,
//               hintStyle: const TextStyle(
//                   fontWeight: FontWeight.w400,
//                   fontSize: 14,
//                   color: Color(0XFF979797)
//                   ),
//               fillColor: const Color(0XFFF6F6F7),
//               filled: true,
//               border: OutlineInputBorder(
//                   borderRadius: BorderRadius.circular(16),
//                   borderSide: BorderSide.none),
//               focusedBorder: OutlineInputBorder(
//                   borderRadius: BorderRadius.circular(16),
//                   borderSide:
//                       const BorderSide(width: 1.5, color: Color(0XFFE7E7E7)))),
//         ),
//       ],
//     );
//   }
// }

class AddBox extends StatelessWidget {
  const AddBox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80,
      height: 80,
      decoration: BoxDecoration(
          border: Border.all(width: 2, color: AppColors.orangeColor),
          borderRadius: BorderRadius.circular(22)),
      child: const Center(
        child: Icon(
          Icons.add,
          color: AppColors.orangeColor,
        ),
      ),
    );
  }
}
