
import 'package:benji_crm_v2/view/feature/management/screen/add_address.dart';
import 'package:benji_crm_v2/view/styles/color_style.dart';
import 'package:benji_crm_v2/view/styles/text_style.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:image_picker/image_picker.dart';

class ProfileInfoPage extends StatelessWidget {
  const ProfileInfoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        automaticallyImplyLeading: false,
        actions: [
          TextButton(
              onPressed: () async{
            final ImagePicker picker = ImagePicker();
            final XFile? image = await picker.pickImage(source: ImageSource.gallery);
              },
              child: const Text(
                "Edit photo",
                style: Apptext.red_500_13,
              ))
        ],
        title: Row(
          children: [
            IconButton(
              onPressed: () {
                 Get.back();
              },
              icon: const Icon(Icons.arrow_back_ios_new_outlined),
            ),
            const Text(
              "Profile Info",
              style: Apptext.black_500_24,
            )
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 19),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 40,
              ),
              SizedBox(
                width: 172,
                height: 172,
                child: Container(
                  decoration: BoxDecoration(
                      color: AppColors.orangeColor,
                      borderRadius: BorderRadius.circular(27)),
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 24, vertical: 24),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: AppColors.whiteColor),
                child: Column(
                  children: [
                     ListTile(
                      leading: const Icon(Icons.person),
                      title: const Text(
                        "Tommy Jason",
                        style: Apptext.black_600_14,
                      ),
                      trailing: CircleAvatar(
                          backgroundColor: const Color(0XFFFFE6E5),
                          foregroundColor: AppColors.orangeColor,
                          child: Image.asset("assets/icons/Edit.png")),
                    ),
                    const Divider(
                      color: Color(
                        0XFF6B6B6B,
                      ),
                    ),
                    ListTile(
                      leading: const Icon(Icons.phone),
                      title: const Text(
                        "+234 805 456 657",
                        style: Apptext.black_600_14,
                      ),
                       trailing: CircleAvatar(
                          backgroundColor: const Color(0XFFFFE6E5),
                          foregroundColor: AppColors.orangeColor,
                          child: Image.asset("assets/icons/Edit.png")),
                    ),
                    const Divider(
                      color: Color(
                        0XFF6B6B6B,
                      ),
                    ),
                    const ListTile(
                      leading: Icon(Icons.mail),
                      title: Text(
                        "Example@gmail.com",
                        style: Apptext.black_600_14,
                      ),
                    ),
                    const Divider(
                      color: Color(
                        0XFF6B6B6B,
                      ),
                    ),
                    const SizedBox(height: 16,),
                    Row(
                      children: [
                        Wrap(
                          crossAxisAlignment: WrapCrossAlignment.center,
                           spacing: 8,
                          children: [
                            Container(
                              width: 20,
                              height: 20,
                              decoration: BoxDecoration(
                                border: Border.all(width: 2,color: const Color(0XFF828282)),
                                  borderRadius: BorderRadius.circular(5)),
                            ),
                            const Text("Male",style: Apptext.black_600_14,)
                          ],
                        ),
                        const SizedBox(width: 24,),
                        Wrap(
                          crossAxisAlignment: WrapCrossAlignment.center,
                          spacing: 8,
                          children: [
                            Container(
                              width: 20,
                              height: 20,
                              decoration: BoxDecoration(
                                 border: Border.all(width: 2,color: const Color(0XFF828282)),
                                
                                  borderRadius: BorderRadius.circular(5)),
                            ),
                            const Text("Female",style: Apptext.black_600_14)
                          ],
                        )
                      ],
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 32,
              ),
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 24, vertical: 24),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: AppColors.whiteColor),
                child: Column(
                  children: [
                    ListTile(
                      onTap: () {
                        Get.to(()=>const AddDeliveryAddress());
                      },
                      title: const Text(
                        "Edit Address",
                        style: Apptext.black_600_14,
                      ),
                       trailing: CircleAvatar(
                          backgroundColor: const Color(0XFFFFE6E5),
                          foregroundColor: AppColors.orangeColor,
                          child: Image.asset("assets/icons/Edit.png")),
                    ),
                    const Divider(
                      color: Color(
                        0XFF6B6B6B,
                      ),
                    ),
                     ListTile(
                      title: const Text(
                        "Delete Account",
                        style: Apptext.black_600_14,
                      ),
                      trailing: CircleAvatar(
                          backgroundColor: const Color(0XFFFFE6E5),
                          foregroundColor: AppColors.orangeColor,
                          child: Image.asset("assets/icons/delete.png")),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 82,
              ),
              Container(
                padding: const EdgeInsets.symmetric(vertical: 15),
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: AppColors.orangeColor),
                child: const Center(
                    child: Text(
                  "Save",
                  style: Apptext.white_600_20,
                )),
              ),
              const SizedBox(
                height: 32,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
