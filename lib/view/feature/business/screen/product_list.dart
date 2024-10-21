
import 'package:benji_crm_v2/view/feature/business/widget/custom_search_field.dart';
import 'package:benji_crm_v2/view/styles/color_style.dart';
import 'package:benji_crm_v2/view/styles/text_style.dart';
import 'package:flutter/material.dart';

class ProductListScreen extends StatelessWidget {
  const ProductListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: false,
        title: const Row(children: [
          Icon(Icons.arrow_back_ios_new_outlined),
          Text("Product",style: Apptext.black_500_24,)
        ],),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
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
                  child: const Text("iPhone",style: Apptext.white_400_14,),
                );
             }, separatorBuilder: (BuildContext context, int index) { 
              return const SizedBox(width: 20,);
              }, itemCount: 10,
          ) ,
          ),
          const SizedBox(height: 40,),
          const Text("Total 13 items",style: TextStyle(
            color: Color(0XFF9C9BA6),fontWeight: FontWeight.w500,fontSize: 14
          ),),
          const SizedBox(height: 8,),
          
            // const SizedBox(height: 24,),
            Expanded(
              child: ListView.separated(
                // shrinkWrap: true,
                itemBuilder: (contex,index){
                  return Container(
                    // padding: const EdgeInsets.all(12),
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
                          image: const DecorationImage(
                            fit: BoxFit.fill,
                            image: AssetImage("assets/image/product.png")),
                           borderRadius: BorderRadius.circular(9)
                         ),
                          width: 96,height: 96,
                        ),
                        const SizedBox(width: 12,),
                     const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                       children: [
                         SizedBox(
                          width: 170,
                           child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  
                                  SizedBox(height: 8,),
                                  Text("iPhone XR- 256Raw",style: Apptext.black_600_14,),
                                  Text("256Raw ios 14",style: TextStyle(
                                    color: Color(0XFF6F6F6F,),fontSize: 12,fontWeight: FontWeight.w400
                                  ),),
                                   SizedBox(height: 16,),
                                  Text("N180,000"
                                  ,style: TextStyle(
                                    color: Color(0XFF32343E,),fontSize: 14,fontWeight: FontWeight.w600
                                  ),)
                                  //#A3A3A3
                                ],
                              ),
                         ),
                            Text("Qty: 120",style: Apptext.lightBlack1_500_14,)
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
        floatingActionButton: Container(
        padding: const EdgeInsets.all(10),
        width: 60,height: 60,
        decoration: BoxDecoration(
          color: AppColors.orangeColor,
          borderRadius: BorderRadius.circular(20)
        ),
        child: const Icon(Icons.add,color: AppColors.whiteColor,),
      ),
    );
  }
}