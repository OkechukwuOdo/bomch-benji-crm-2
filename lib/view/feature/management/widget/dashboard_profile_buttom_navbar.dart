
import 'package:benji_crm_v2/view/feature/business/screen/add_new_business.dart';
import 'package:benji_crm_v2/view/styles/color_style.dart';
import 'package:benji_crm_v2/view/styles/text_style.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';

class DashboardProfileButtomNavbar extends StatefulWidget {
  const DashboardProfileButtomNavbar({super.key, required this.isSelected, required this.onTapProfile, required this.onTapDashBoard, });
  final int isSelected;
  final VoidCallback onTapProfile;
  final VoidCallback onTapDashBoard;

  @override
  State<DashboardProfileButtomNavbar> createState() => _DashboardProfileButtomNavbarState();
}

class _DashboardProfileButtomNavbarState extends State<DashboardProfileButtomNavbar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 92,
      width: MediaQuery.of(context).size.width,
      color: Colors.transparent,
      child: Stack(
        alignment: AlignmentDirectional.bottomCenter,
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 39),
            height: 76,
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
                color: AppColors.whiteColor,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(22),
                    topRight: Radius.circular(22))),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap:widget. onTapDashBoard,
                  child:  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      
                       Icon(Icons.grid_view_rounded,color:widget.isSelected==1?const Color(0XFFF00400):const Color(0XFF9B9B9B)),
                      
                      Text(
                        "Dashboard",
                        style:widget.isSelected==1? Apptext.red_600_15:Apptext.black_600_16,
                      )
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: widget. onTapProfile,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                    Icon(Icons.person_4_outlined,color:widget.isSelected==2?const Color(0XFFF00400):const Color(0XFF9B9B9B)),
                     Text(
                        "Profile",
                       style:widget.isSelected==2? Apptext.red_600_15:Apptext.black_600_16,
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          Positioned(
            top: 0,
            child: Container(
              width: 52,
              height: 52,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: AppColors.orangeColor),
              child:IconButton(onPressed: (){
                Get.to(()=>const AddNewBusinessScreen());
              }, 
              icon:  const Icon(
                Icons.add,
                color: AppColors.whiteColor,
              ),)
            ),
          )
        ],
      ),
    );
  }
}
