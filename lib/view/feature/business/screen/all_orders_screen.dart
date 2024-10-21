import 'package:benji_crm_v2/view/feature/business/widget/custom_search_field.dart';
import 'package:benji_crm_v2/view/styles/color_style.dart';
import 'package:benji_crm_v2/view/styles/text_style.dart';
import 'package:flutter/material.dart';

class AllOrdersScreen extends StatelessWidget {
  const AllOrdersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: false,
        title: const Row(children: [
          Icon(Icons.arrow_back_ios_new_outlined),
          Text("Orders",style: Apptext.black_500_24,)
        ],),
      ),
      body: Padding(
       padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children:  [
            const CustomSearchField(),
            const SizedBox(height: 24,),
          SizedBox(height: 45,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemBuilder: (BuildContext context, int index) { 
              return     Container(
                  // width: 59,height: 40,
                padding: const EdgeInsets.symmetric(horizontal: 24,vertical: 11),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: AppColors.orangeColor
                  ),
                  child: const Text("Pending",style: Apptext.white_400_14,),
                );
             }, separatorBuilder: (BuildContext context, int index) { 
              return const SizedBox(width: 20,);
              }, itemCount: 10,
          ) ,
          ),
            const SizedBox(height: 24,),
            Expanded(
              child: ListView.separated(
                // shrinkWrap: true,
                itemBuilder: (contex,index){
                  return Container(
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: AppColors.whiteColor,
                      borderRadius: BorderRadius.circular(20)
                    ),
                    child: Row(
                      crossAxisAlignment:CrossAxisAlignment.start ,
                      // spacing: 10,
                      children: [
                        Container(
                         decoration: BoxDecoration(
                           color: AppColors.orangeColor,
                           borderRadius: BorderRadius.circular(9)
                         ),
                          width: 52,height: 52,
                        ),
                        const SizedBox(width: 12,),
                     const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Row(
                               
                                children: [
                                  Wrap(
                                    children: [
                                      Text("Bliss Charles",style: Apptext.black_400_12,),
                                      SizedBox(width: 12,), Text("06-07-2024 | 03:49pm"),
                                    ],
                                  ), SizedBox(width: 8,),CircleAvatar(backgroundColor: Color(0XFF3F8FFF),
                                    radius: 6,)],
                              
                            ),
                            SizedBox(height: 8,),
                            Text("iPhone XR- 256Raw",style: Apptext.black_500_14,),
                            Text("+2 items",style: TextStyle(
                              color: Color(0XFF131313,),fontSize: 12,fontWeight: FontWeight.w400
                            ),),
                             SizedBox(height: 16,),
                            Text("21 Ani Street, GRA, Enugu"
                            ,style: TextStyle(
                              color: Color(0XFFA3A3A3,),fontSize: 12,fontWeight: FontWeight.w400
                            ),)
                            //#A3A3A3
                          ],
                        )
                      ],
                    ),
                  );
                }, 
                separatorBuilder: (contex,index){
                  return const SizedBox(height: 16,);
                }, 
                itemCount: 5),
            ),
            
          ],
        ),
      ),
    );
  }
}