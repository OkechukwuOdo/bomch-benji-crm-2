
import 'package:benji_crm_v2/view/feature/business/screen/businesses_screen.dart';
import 'package:benji_crm_v2/view/feature/business/screen/withdrawal_page.dart';
import 'package:benji_crm_v2/view/feature/management/screen/crm_home_page.dart';
import 'package:benji_crm_v2/view/feature/management/screen/profile_info_page.dart';
import 'package:benji_crm_v2/view/feature/management/screen/reviews.dart';
import 'package:benji_crm_v2/view/feature/management/widget/dashboard_profile_buttom_navbar.dart';
import 'package:benji_crm_v2/view/styles/color_style.dart';
import 'package:benji_crm_v2/view/styles/text_style.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';

class CRMProfilePage extends StatefulWidget {
  const CRMProfilePage({super.key});

  @override
  State<CRMProfilePage> createState() => _CRMProfilePageState();
}

class _CRMProfilePageState extends State<CRMProfilePage> {
  int selectedNavItem=2;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        toolbarHeight: 30,
        backgroundColor: const Color(0XFFFFDCDC),
      ),
      body: ListView(children: [
        Container(
          padding: const EdgeInsets.only(left: 42, right: 16),
          color: const Color(0XFFFFDCDC),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Container(
                    width: 73,
                    height: 73,
                    decoration: const BoxDecoration(
                        color: AppColors.whiteColor, shape: BoxShape.circle),
                    child: const Center(child: Icon(Icons.person)),
                  ),
                  const SizedBox(
                    width: 18,
                  ),
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Bliss Charls",
                        style: Apptext.black_500_20,
                      ),
                      Text(
                        "+234 9676748438",
                        style: Apptext.grey4_400_12,
                      ),
                    ],
                  ),
                ],
              ),
              const Row(
                children: [
                  CircleAvatar(
                    child: Icon(
                      Icons.notifications_none_outlined,
                      color: AppColors.orangeColor,
                    ),
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  CircleAvatar(
                    child: Icon(
                      Icons.settings_outlined,
                      color: AppColors.orangeColor,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        ClipPath(
          clipper:MyCustomCliper(),
          child: Container(
            padding: const EdgeInsets.only(left: 52),
            height: 211,
            decoration: const BoxDecoration(
              color: Color(0XFFFFDCDC),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                
                const SizedBox(
                  height: 16,
                ),
                const Row(
                  children: [
                    Text(
                      "Available Balance",
                      style: Apptext.black_500_14,
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Icon(Icons.remove_red_eye_outlined)
                  ],
                ),
                const SizedBox(
                  height: 8,
                ),
                const Text(
                  "# 193,280",
                  style: Apptext.black_600_24,
                ),
                const SizedBox(
                  height: 8,
                ),
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 7),
                  decoration: BoxDecoration(
                      color: AppColors.whiteColor,
                      borderRadius: BorderRadius.circular(23)),
                  child: RichText(
                      text: const TextSpan(
                          text: "& Cashback  ",
                          style: Apptext.black_400_14,
                          children: [
                        TextSpan(text: "#2.00", style: Apptext.red_400_14)
                      ])),
                )
              ],
            ),
          ),
        ),
        const SizedBox(
          height: 28,
        ),
        // Padding(
        //   padding: const EdgeInsets.symmetric(horizontal: 24.0),
        //   child: Container(
        //       padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 20),
        //       decoration: BoxDecoration(
        //           color: AppColors.whiteColor,
        //           borderRadius: BorderRadius.circular(30)),
        //       child: Column(
        //         children: [
        //           ProfileItems(
        //             title: "Profile Seeting",
        //             icon: const Icon(Icons.person_4_rounded),
        //             // Image.asset("assets/icons/Profile.png",color: AppColors.orangeColor,),
        //             onTap: () {
        //               Get.to(()=>const ProfileInfoPage());
        //             },
        //           ),
        //           const SizedBox(
        //             height: 22,
        //           ),
        //           ProfileItems(
        //               onTap: () {
        //                 Get.to(()=>const CRMProfilePage());
        //               },
        //               title: "Businesses",
        //               icon:const Icon(Icons.person_4_rounded),
        //               //  Image.asset("assets/icons/settings.png",color: AppColors.orangeColor,),
        //               ),
        //           const SizedBox(
        //             height: 22,
        //           ),
        //           ProfileItems(
        //               onTap: () {
        //                 Get.to(()=>const CRMProfilePage());
        //               },
        //               title: "Withdrawal History",
        //               icon: const Icon(Icons.person_4_rounded),
        //               // Image.asset("assets/icons/withdraw.png",color: AppColors.orangeColor,),
        //               ),
        //           const SizedBox(
        //             height: 22,
        //           ),
        //           ProfileItems(
        //               onTap: () {
        //                 Get.to(()=>const CRMProfilePage());
        //               },
        //               title: "User Reviews",
        //               icon:const Icon(Icons.person_4_rounded),
        //               //  Image.asset("assets/icons/reviews.png",color: AppColors.orangeColor,),
        //               ),
        //           const SizedBox(
        //             height: 22,
        //           ),
        //           ProfileItems(
        //               onTap: () {
        //                 Get.to(()=>const CRMProfilePage());
        //               },
        //               title: "Log Out",
        //               icon: const Icon(Icons.person_4_rounded),
        //               // Image.asset("assets/icons/Logout.png",color: AppColors.orangeColor,),
        //               ),
        //         ],
        //       )),
        // ),

           Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 20),
              decoration: BoxDecoration(
                  color: AppColors.whiteColor,
                  borderRadius: BorderRadius.circular(30)),
              child: Column(
                children: [
                  ProfileItems(
                    title: "Profile Seeting",
                    icon: Image.asset("assets/icons/Profile.png",color: AppColors.orangeColor,),
                    onTap: () {
                      Get.to(()=>const ProfileInfoPage());
                    },
                  ),
                  const SizedBox(
                    height: 22,
                  ),
                  ProfileItems(
                      onTap: () {
                        Get.to(()=>const AllBusinessesScreen());
                      },
                      title: "Businesses",
                       icon: Image.asset("assets/icons/settings.png",color: AppColors.orangeColor,),),
                  const SizedBox(
                    height: 22,
                  ),
                  ProfileItems(
                      onTap: () {
                        Get.to(()=>const WithdrawalScreen());
                      },
                      title: "Withdrawal History",
                       icon: Image.asset("assets/icons/withdraw.png",color: AppColors.orangeColor,),),
                  const SizedBox(
                    height: 22,
                  ),
                  ProfileItems(
                      onTap: () {
                        Get.to(()=>const ReviewAndRatingScreen());
                      },
                      title: "User Reviews",
                       icon: Image.asset("assets/icons/reviews.png",color: AppColors.orangeColor,),),
                  const SizedBox(
                    height: 22,
                  ),
                  ProfileItems(
                      onTap: () {
                        // Get.to(()=>const VendorProfileScreen());
                      },
                      title: "Log Out",
                     icon:  Image.asset("assets/icons/Logout.png",color: AppColors.orangeColor,),),
                ],
              )),
        ),
        const SizedBox(height: 114,)
      ]),
      bottomNavigationBar:  DashboardProfileButtomNavbar(
                isSelected: selectedNavItem, 
        onTapProfile: () { 
               setState(() {
          selectedNavItem=2;
        });
         Get.to(()=>const CRMProfilePage());
         },
         onTapDashBoard: () { 
          setState(() {
          selectedNavItem=1;
        });
           Get.to(()=>const CRMDashboard());
          },),
    );
  }
}

class MyCustomCliper extends CustomClipper<Path>{
  @override
  getClip(Size size) {
  double w=size.width;
  double h = size.height;
  final path = Path();
  path.lineTo(0, h-80);
  path.quadraticBezierTo(w/5, h, w/2.4, h);
  path.quadraticBezierTo(w/1.8, h, w, h-110);
  path.lineTo(w, 0);
  path.close();
  return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper oldClipper) {
    throw false;
  }
}

class ProfileItems extends StatelessWidget {
  final VoidCallback onTap;
  final String title;
  final Widget icon;
  const ProfileItems({
    super.key,
    required this.title,
    required this.icon,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap:onTap,
      leading: icon,
      title: Text(
        title,
        style: Apptext.black_400_15,
      ),
      // trailing: IconButton(
          // onPressed: (), icon: const Icon(Icons.arrow_forward_ios_outlined)),
    );
  }
}
