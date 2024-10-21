
import 'package:benji_crm_v2/view/feature/business/screen/add_new_item.dart';
import 'package:benji_crm_v2/view/feature/business/widget/custom_button.dart';
import 'package:benji_crm_v2/view/feature/business/widget/custom_dropDown.dart';
import 'package:benji_crm_v2/view/feature/business/widget/custom_textFeild.dart';
import 'package:benji_crm_v2/view/styles/color_style.dart';
import 'package:benji_crm_v2/view/styles/text_style.dart';
import 'package:flutter/material.dart';

class AddNewBusinessScreen extends StatefulWidget {
  const AddNewBusinessScreen({super.key});

  @override
  State<AddNewBusinessScreen> createState() => _AddNewBusinessScreenState();
}

class _AddNewBusinessScreenState extends State<AddNewBusinessScreen> {
  @override
  Widget build(BuildContext context) {
    bool? switchValue;
    List<String> weekDays = [
      "Monday",
      "Tuesday",
      "Wednesday",
      "Thursday",
      "Friday",
      "Satuday",
      "Sunday"
    ];
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: false,
        title: const Row(
          children: [
            Icon(Icons.arrow_back_ios_new_outlined),
            SizedBox(
              width: 10,
            ),
            Text(
              "Add new Business",
              style: Apptext.black_500_24,
            )
          ],
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        children: [
          const SizedBox(
            height: 24,
          ),
          Container(
            padding: const EdgeInsets.only(top: 40, bottom: 26),
            decoration: BoxDecoration(
                border: Border.all(width: 1.5, color: const Color(0XFF979797)),
                borderRadius: BorderRadius.circular(24),
                color: AppColors.whiteColor),
            child:  Column(
              children: [
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
            height: 24,
          ),
          Container(
            height: 144,
            padding: const EdgeInsets.only(top: 40, bottom: 26),
            decoration: BoxDecoration(
                border: Border.all(width: 1.5, color: const Color(0XFF979797)),
                borderRadius: BorderRadius.circular(24),
                color: AppColors.whiteColor),
            child: Center(
              child: Image.asset("assets/icons/upload.png"),
            )
          ),
          const SizedBox(
            height: 24,
          ),
          const CustomDropDownField(
              title: 'Business Type', hintText: 'Enter Name here'),
          const SizedBox(
            height: 27,
          ),
          const CustomTextField(
              title: "Business Name", hintText: "Enter Name here"),
          const SizedBox(
            height: 27,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Business Hours",
                style: Apptext.black_600_16,
              ),
              Row(
                children: [
                  Transform.scale(
                    scale: 0.9,
                    child: DropdownMenu(
                      dropdownMenuEntries: weekDays
                          .map<DropdownMenuEntry<String>>((String value) {
                        return DropdownMenuEntry<String>(
                          value: value,
                          label: value,
                        );
                      }).toList(),
                      inputDecorationTheme: InputDecorationTheme(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(11))),
                    ),
                  ),
                  const SizedBox(
                    width: 12,
                  ),
                  Transform.scale(
                      scale: 0.6,
                      child: Switch(
                        // dragStartBehavior: DragStartBehavior.start,
                          activeColor: Colors
                              .white, // Thumb color when the switch is active
                          activeTrackColor: const Color(0xff0ff28c201),// Track color when the switch is active
                          inactiveThumbColor: Colors
                              .red, // Thumb color when the switch is inactive
                          inactiveTrackColor:Colors.white, // Track color when the switch is inactive
                          value: switchValue??false,
                          onChanged: (v) {
                             print(v);
                          setState(() {
                             print(switchValue);
                           switchValue=v;
                           print(switchValue);
                          });
                          })),
                  const Text(
                    "Open",
                    style: TextStyle(
                        color: Color(0XFF28C201),
                        fontSize: 14,
                        fontWeight: FontWeight.w500),
                  )
                ],
              )
            ],
          ),
          const SizedBox(
            height: 27,
          ),
          const CustomTextField(title: "Address", hintText: "Enter Name here"),
          const SizedBox(
            height: 27,
          ),
          const CustomDropDownField(
              title: 'Bank Name', hintText: 'Select Bank'),
          const SizedBox(
            height: 27,
          ),
          const CustomTextField(
              title: "Account Number", hintText: "Enter Name here"),
          const SizedBox(
            height: 27,
          ),
          const CustomTextField(
              title: "CAC Number", hintText: "Enter Name here"),
          const SizedBox(
            height: 27,
          ),
          const ProductDescription(),
          const SizedBox(
            height: 145,
          ),
          const CustomButton(
            title: 'Save',
          ),
          const SizedBox(
            height: 32,
          )
        ],
      ),
    );
  }
}
