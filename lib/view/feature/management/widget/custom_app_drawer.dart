
import 'package:benji_crm_v2/view/feature/business/screen/all_orders_screen.dart';
import 'package:benji_crm_v2/view/feature/business/screen/businesses_screen.dart';
import 'package:benji_crm_v2/view/feature/business/screen/transaction_history.dart';
import 'package:benji_crm_v2/view/feature/management/screen/reviews.dart';
import 'package:benji_crm_v2/view/styles/color_style.dart';
import 'package:benji_crm_v2/view/styles/text_style.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';

class CustomAppDrawer extends StatelessWidget {
  const CustomAppDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    // int selectedIndex=0;
    return Drawer(
      backgroundColor: const Color(0XFFFCFCFC),
      child: Padding(
        padding:
            const EdgeInsets.only(right: 15, left: 13.0, top: 72, bottom: 70),
        child: ListView(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset("assets/image/benji_logo.png"),
                Container(
                  width: 32,
                  height: 32,
                  decoration: BoxDecoration(
                      color: const Color(0XFFD9D9D9),
                      borderRadius: BorderRadius.circular(10)),
                  child: const Icon(Icons.cancel_sharp),
                ),
              ],
            ),
            const SizedBox(
              height: 16,
            ),
               DrawerItem(
                title: 'Dashboard', onTap: () { 
                 Get.back();
                 }, icon: const Icon(Icons.grid_view_rounded)),
             DrawerItem(title: 'Businesses', onTap: () { 
              Get.to(()=>const AllBusinessesScreen());
              }, icon: Image.asset("assets/icons/Bag.png"),),
            // const SizedBox(height: 22,),
           DrawerItem(title: 'Order', onTap: () { 
            Get.to(()=>const AllOrdersScreen());
            }, icon: Image.asset("assets/icons/Bag.png"),),
            // const SizedBox(height: 22,),
            DrawerItem(title: 'Notificationder', onTap: () { 
              // Get.to(()=>const Notifi());
             }, icon: const Icon(Icons.notification_important_outlined),),
            // const SizedBox(height: 22,),
            // const SizedBox(height: 22,),
            DrawerItem(title: 'Transaction History', onTap: () {
              Get.to(()=>const TransactionHistoryScreen ());
              }, icon: Image.asset("assets/icons/history.png")),
            // const SizedBox(height: 22,),
            DrawerItem(title: 'Review', onTap: () { 
              Get.to(()=>const ReviewAndRatingScreen());
             }, icon: Image.asset("assets/icons/history.png"),),
            
            // const Spacer(),
            const SizedBox(height: 100,),
             DrawerItem(title: 'Login', onTap: () {  }, icon: Image.asset("assets/icons/Logout.png"),),
              DrawerItem(title: 'Setting', onTap: () { 
                // Get.to(()=>const VendorProfileScreen());
               }, icon: Image.asset("assets/icons/history.png"),),
               DrawerItem(title: 'Support', onTap: () {  }, icon: Image.asset("assets/icons/Headphones.png"),),
            const Divider(
              color: Colors.black,
              thickness: 1,
            ),
            const SizedBox(
              height: 12,
            ),
            ListTile(
              title:  const Text("Fine Brothers"),
              subtitle: const FittedBox(
                 fit: BoxFit.fitWidth, 
                child: Text("finebrothers@gmail.com")),
              leading: Container(
                width: 56,
                height: 56,
                decoration: const BoxDecoration(
                    color: AppColors.phoneInputFillColor,
                    shape: BoxShape.circle),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class DrawerItem extends StatelessWidget {
  final String title;
  final VoidCallback onTap;
  final Widget icon;
  const DrawerItem({
    super.key, required this.title, required this.onTap, required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      
      // subtitle: const Text("data"),
      contentPadding:
          const EdgeInsets.symmetric(horizontal: 18, vertical: 0),
      // tileColor: AppColors.orangeColor,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15)),
      selected: false,
      selectedColor: AppColors.whiteColor,
      leading: icon,
      title: Text(title,style: Apptext.black_400_16,),
      onTap:onTap,
    );
  }
}
