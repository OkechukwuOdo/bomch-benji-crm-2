import 'package:benji_crm_v2/view/styles/color_style.dart';
import 'package:benji_crm_v2/view/styles/text_style.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';

class AllVendorsScreen extends StatelessWidget {
  const AllVendorsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        toolbarHeight: 100,
        actions: [
          IconButton(onPressed: (){
          
          }, icon: const Icon(Icons.search,size: 36,))
        ],
        title:  Row(
          children: [
            GestureDetector(
              onTap:() =>   Get.back(),
              child: const Icon(Icons.arrow_back_ios_new_outlined)),
            const SizedBox(width: 12,),
            const Text("Vendors",style: Apptext.black_500_24,)
          ],
        ),
      ),
      body:  Padding(
        padding: const EdgeInsets.symmetric(horizontal: 22.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              decoration:  BoxDecoration(
                border: Border.all(width: 2,color: const Color(0XFFFFCECE)),
                color: const Color(0XFFFFE8E8),
                borderRadius: BorderRadius.circular(42)
              ),
              padding: const EdgeInsets.symmetric(vertical: 12,horizontal: 11),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      side: BorderSide.none
                    ),
                    onPressed: (){}, child: const Text("Vendors")),
                  const Spacer(),
                  OutlinedButton(
                     style: OutlinedButton.styleFrom(
                      side: BorderSide.none
                    ),
                    onPressed: (){}, child: const Text("Third party vendors")),
                ],
              ),
            ),
            const SizedBox(height: 16,),
            const Text("Third party vendors (2)",style: Apptext.grey_500_14,),
            const SizedBox(height: 16,),
            Expanded(child: ListView.separated(
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  child:  Row(
                    children: [
                      Container(
                        width: 96,height: 96,
                        decoration: BoxDecoration(
                          image: const DecorationImage(
                            fit: BoxFit.fill,
                            image: AssetImage("assets/image/product.png")),
                          borderRadius: BorderRadius.circular(16)
                        ),
                      ),
                      const SizedBox(width: 18,),
                       Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text("Ada Best Hairs",style: Apptext.black_600_14,),
                           Row(
                             children: [
                              Image.asset("assets/icons/Message.png"),
                               const Text(
                                overflow: TextOverflow.ellipsis,
                                "Adaobibest2024@gmail",style: Apptext.lightBlack_400_12,),
                             ],
                           ),
                           const SizedBox(height: 16,),
                             Row(
                              children: [
                                Image.asset("assets/icons/cac.png"),
                                const Text("NIN: 9567325986567",style: Apptext.black_400_12,),
                              ],
                            ),
                        ],
                      )
                    ],
                  ),
                );
                }, 
              separatorBuilder: (BuildContext context, int index) { 
                return const SizedBox(height: 14,);
               },
               itemCount: 10,))
          ],
        ),
      ),
      floatingActionButton: GestureDetector(
        onTap: () {
          
        },
        child: Container(
          width: 72,height: 72,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: AppColors.orangeColor,
          ),
          child: const Center(child: Icon(Icons.add,color: AppColors.whiteColor,)),
        ),
      ),
    );
  }
}