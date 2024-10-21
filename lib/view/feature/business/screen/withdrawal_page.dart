import 'package:benji_crm_v2/view/feature/business/widget/custom_button.dart';
import 'package:benji_crm_v2/view/feature/business/widget/custom_dropDown.dart';
import 'package:benji_crm_v2/view/feature/business/widget/custom_textFeild.dart';
import 'package:benji_crm_v2/view/styles/text_style.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

class WithdrawalScreen extends StatelessWidget {
  const WithdrawalScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Row(
          children: [
            GestureDetector(
              onTap: ()=>Get.back(),
              child: const Icon(Icons.arrow_back_ios_new_outlined),
            ),
            const SizedBox(width: 12,),
             const Text(
              "Withdrawal ",
              style: Apptext.black_500_24,
            )
          ],
        ),
      ),
      body: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 33.0,vertical: 45),
        child: Column(
          children: [
            CustomDropDownField(title: "Acct number", hintText: "Enter Acct no"),
            CustomTextField(title: "Acct number", hintText: "Enter Acct no"),
            CustomTextField(title: "Amount", hintText: "Enter Acct no"),
            Spacer(),
            CustomButton(title: "Withdraw"),
            Spacer(),
          ],
        ),
      ),
    );
  }
}