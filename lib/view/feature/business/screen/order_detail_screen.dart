
import 'package:benji_crm_v2/view/styles/color_style.dart';
import 'package:benji_crm_v2/view/styles/text_style.dart';
import 'package:flutter/material.dart';

class OrderDetailScreen extends StatelessWidget {
  const OrderDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: false,
        title: const Row(children: [
          Icon(Icons.arrow_back_ios_new_outlined),
          Text("Order Detail",style: Apptext.black_500_24,)
        ],),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        children: [
          Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: AppColors.whiteColor
            ),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Text("Oder ID",style: Apptext.grey4_400_12,),
                     Text("#00977",style: Apptext.black_600_16,),
                  ],
                ),
                Column(
                  children: [
                    Text("Today, 12:30pm",style: Apptext.black_400_12,),
                     Text("Pending",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600,color: Color(0xFF0004FB)),),
                  ],
                )
              ],
            ),
          ),
          const SizedBox(height: 20,),
          Container(
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: AppColors.whiteColor,
              borderRadius: BorderRadius.circular(17)
            ),
            child:  Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text("Items ordered",style: Apptext.black_600_16,),
                const SizedBox(height: 8,),
                ListView.separated(
                  shrinkWrap: true,
                  itemBuilder: (BuildContext context, int index) { 
                    return  ListTile(
                      leading: Container(
                        width: 40,height: 40,
                        decoration: BoxDecoration(
                          color: AppColors.orangeColor,
                          borderRadius: BorderRadius.circular(9),
                          image: const DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage("assets/image/product.png"))
                        ),
                      ),
                      title: const Text("iPhone XR- 256Raw",style: Apptext.black_500_12,),
                      trailing: const Text("NGN 190,000",style: Apptext.black_500_12,),
                    );
                   }, 
                  separatorBuilder: (BuildContext context, int index) {
                    return const SizedBox(height: 8,);
                    }, 
                  itemCount: 5,)
              ],
            ),
          ),
          const SizedBox(height: 16,),
          Container(
            padding: const EdgeInsets.all(12),
            decoration:  BoxDecoration(
              borderRadius: BorderRadius.circular(17),
              color: AppColors.whiteColor
            ),
            child:  Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text("Customer’s Detail",style: Apptext.black_600_16,),
                ListTile(
                  leading: Container(
                    width: 32,height: 32,
                    decoration: const BoxDecoration(
                      color: AppColors.orangeColor,
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage("assets/image/profile pic.png")),
                      shape: BoxShape.circle
                    ),
                  ),
                  title: const Text("Bliss Charles",style: Apptext.black_500_12,),
                  subtitle: const Text("+234 902 334 8400",style: Apptext.grey4_400_12,),
                  trailing: Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: AppColors.orangeColor
                    ),
                    child: const Icon(Icons.phone,color: AppColors.whiteColor,),
                  ),
                ),
                const ListTile(
                  leading: SizedBox(width: 32,height: 32,),
                  title: Text("Delivery address",style: Apptext.grey4_400_12,),
                  subtitle: Text("21 Ani Street, GRA, Enugu",style: Apptext.black_400_14,),
                )
                
                
              ],
            ),
          ),
           const SizedBox(height: 20,),
                    Container(
            padding: const EdgeInsets.all(12),
            decoration:  BoxDecoration(
              borderRadius: BorderRadius.circular(17),
              color: AppColors.whiteColor
            ),
            child:  const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Order Summary",style: Apptext.black_600_16,),
              ListTile(
                  title: Text("Subtotal",style: Apptext.black_400_14,),
                  trailing: Text("NGN 570,000",style: Apptext.black_400_14),
                ),
                ListTile(
                  title: Text("Delivery Fee",style: Apptext.black_400_14,),
                  trailing: Text("NGN 570,000",style: Apptext.black_400_14,),
                ),
                  ListTile(
                  title: Text("Total",style: Apptext.black_400_14,),
                  trailing: Text("NGN 570,000",style: Apptext.black_400_14),
                )
              ],
            ),
          ),
          const SizedBox(height: 45,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              OutlinedButton(
                
                style: OutlinedButton.styleFrom(
                  fixedSize: const Size(125, 44),
                  padding: const EdgeInsets.all(10),
                   textStyle: const TextStyle(fontWeight: FontWeight.w600,fontSize: 16),
                  side: const BorderSide(width: 2,color: AppColors.orangeColor),
                  foregroundColor: AppColors.orangeColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(14),
                    // side: const BorderSide(width: 1.5,color: AppColors.orangeColor)
                  )
                ),
                onPressed: (){}, child: const Text("Cancel Order")),
              OutlinedButton(
                style: OutlinedButton.styleFrom(
                  fixedSize: const Size(125, 44),
                  padding: const EdgeInsets.all(10),
                  side: BorderSide.none,
                  backgroundColor: AppColors.orangeColor,
                  foregroundColor: AppColors.whiteColor,
                  textStyle: const TextStyle(fontWeight: FontWeight.w600,fontSize: 16)
                ),
                onPressed: (){}, child: const Text("Accept Order")),
            ],
          ),
          const SizedBox(height: 45,),
        ],
      ),
    );
  }
}