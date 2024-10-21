
import 'package:benji_crm_v2/view/feature/management/widget/custom_button.dart';
import 'package:benji_crm_v2/view/feature/management/widget/custom_input_field.dart';
import 'package:benji_crm_v2/view/feature/management/widget/custom_phone_field.dart';
import 'package:benji_crm_v2/view/styles/text_style.dart';
import 'package:flutter/material.dart';

class AddDeliveryAddress extends StatelessWidget {
  const AddDeliveryAddress({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
         leading: Row(
        children: [
          const SizedBox(width: 7,),
          IconButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              icon: const Icon(
                Icons.arrow_back_ios_new_outlined,
              ),
            ),
             const Text("Add Address",style: Apptext.black_500_24,),
        ],
      ),
      leadingWidth: double.infinity,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Column(
              children: [
                Image.asset("assets/image/Add_location.png",fit: BoxFit.fill,),
                // const SizedBox(height: 16,),
                CustomInputFormField( hintText: 'Enter Address name tag',validator: (String? value) {
                  return null;
                  }),
               const SizedBox(height: 12,),
               CustomInputFormField( hintText: 'Enter Street Address',validator: (String? value) {
                 return null;
                 }),
               const SizedBox(height: 12,),
                CustomInputFormField( hintText: 'Select Country ',suffixIcon: const Icon(Icons.keyboard_arrow_down_sharp),validator: (String? value) {
                  return null;
                  }),
                const SizedBox(height: 12,),
                CustomInputFormField( hintText: 'Select State',suffixIcon: const Icon(Icons.keyboard_arrow_down_sharp),validator: (String? value) {
                  return null;
                  }),
                const SizedBox(height: 12,),
               CustomInputFormField( hintText: 'Select City',suffixIcon: const Icon(Icons.keyboard_arrow_down_sharp),validator: (String? value) {
                 return null;
                 }),
                const SizedBox(height: 12,),
                const CustomPhoneFied(hintText: "Phone number", suffixIcon: Icon(Icons.phone)),
                 const SizedBox(height: 45,),
                CustomOutlineButton(onPressed: (){}, child: const Text("Add Address",style: Apptext.white_600_20,)),
                 const SizedBox(height: 16,),
              ],
            ),
          ),
        ),
    );
  }
}