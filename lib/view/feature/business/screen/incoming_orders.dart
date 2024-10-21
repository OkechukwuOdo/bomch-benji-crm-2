
import 'package:benji_crm_v2/view/feature/business/widget/custom_search_field.dart';
import 'package:benji_crm_v2/view/styles/color_style.dart';
import 'package:benji_crm_v2/view/styles/text_style.dart';
import 'package:flutter/material.dart';

class IncomingOrdersScreen extends StatelessWidget {
  const IncomingOrdersScreen({super.key});

  @override
  Widget build(BuildContext context) {
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
              "Incoming Orders",
              style: Apptext.black_500_24,
            )
          ],
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        children:  [
          const SizedBox(height: 14,),
          const CustomSearchField(),
          const SizedBox(height: 24,),
          const Text("Today"),
          const SizedBox(height: 16,),
          Expanded(child: 
          ListView.separated(
            shrinkWrap: true,
            itemBuilder: (BuildContext context, int index) { 
              return Container(
                padding: const EdgeInsets.symmetric(vertical: 12,),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 56,height: 56,
                      decoration:  BoxDecoration(
                        // color: AppColors.orangeColor,
                        borderRadius: BorderRadius.circular(9),
                        image: const DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage("assets/image/product.png"))
                      ),
                    ),const SizedBox(width: 12,),
                     SizedBox(
                      width: 264,
                       child: Column(
                               
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                                          
                             const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                               crossAxisAlignment: CrossAxisAlignment.start,
                               children: [Text("Bliss Charles",style: Apptext.black_400_12,),
                                Text("21 Ani Street, GRA, Enugu",style: Apptext.grey3_400_12,),],
                             ),
                           
                           const SizedBox(height: 6,),
                          const Text("iPhone XR- 256Raw",style: Apptext.black_500_14,),
                          const SizedBox(height: 4,),
                          const Text("+2 items",style: Apptext.black_400_12),
                          const SizedBox(height: 7,),
                          SizedBox(
                            width: double.infinity,
                            child: Row(
                               crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text("Just now"),
                                const Spacer(),
                                OutlinedButton(
                                  style: OutlinedButton.styleFrom(
                                    padding: const EdgeInsets.symmetric(horizontal: 12,vertical: 6),
                                    backgroundColor: AppColors.orangeColor,
                                     shape: RoundedRectangleBorder(
                                      side: BorderSide.none,
                                    borderRadius: BorderRadius.circular(8)
                                   ),
                                  ),
                                  onPressed: (){}, child: const Text(" Decline ",style: Apptext.white_500_12,)),
                                const SizedBox(width: 8,),
                                 OutlinedButton(
                                   style: OutlinedButton.styleFrom(
                                    padding: const EdgeInsets.symmetric(horizontal: 12,vertical: 6),
                                   shape: RoundedRectangleBorder(
                                    side: BorderSide.none,
                                    borderRadius: BorderRadius.circular(8)
                                   ),
                                    backgroundColor: const Color(0XFF00A616)
                                  ),
                                  onPressed: (){}, child: const Text(" Accept ",style: Apptext.white_500_12,))
                              ],
                            ),
                          )
                        ],
                                           ),
                     )
                  ],
                ),
              
              );
             }, separatorBuilder: 
             (BuildContext context, int index) { 
              return const Divider();
              },
              itemCount: 9,)
          )
        ],
      ),
    );
  }
}