import 'package:benji_crm_v2/view/styles/color_style.dart';
import 'package:benji_crm_v2/view/styles/text_style.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

class BusinessProfileScreen extends StatefulWidget {
  const BusinessProfileScreen({super.key});

  @override
  State<BusinessProfileScreen> createState() => _BusinessProfileScreenState();
}

class _BusinessProfileScreenState extends State<BusinessProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      // appBar: AppBar(),
      body:  Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
                   Container(
                  width: MediaQuery.of(context).size.width,
                  height: 177,
                   decoration: const BoxDecoration(
                    color: AppColors.orangeColor,
                    // image: DecorationImage(
                      
                    //   fit: BoxFit.fill,
                    //   image: AssetImage("assets/image/product.png")
                    //   )
                   ),
                   child:  Padding(
                     padding: const EdgeInsets.only(top: 25.0),
                     child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(onPressed: (){
                          Get.back();
                        }, icon: const Icon(Icons.arrow_back_ios_new_outlined)),
                         Padding(
                          padding: const EdgeInsets.only(right: 12.0),
                          child: Row(
                            children: [
                              const Icon(Icons.search,size: 32,),
                              GestureDetector(
                                onTap: () {
                                 showDialog(context: context, 
                                 builder: (BuildContext context){
                                  return const SimpleDialog(
                                    children: [
                                      Column(
                                        children: [Text('data'),
                                        
                                       Text('data'),],
                                      )
                                    ],
                                  );
                                 });
                                },
                                child: const Icon(Icons.search,size: 32,)),
                            ],
                          ),
                        )
                      ],
                     ),
                   ),
                ),
                SizedBox(
                  height: 167,
                width: MediaQuery.of(context).size.width,),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child:  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text('About This Business',style: Apptext.black_500_18,),
                      const SizedBox(height: 8,),
                      const Text('Discover the latest in technology at our store, where we offer a wide range of digital products including cutting-edge phones, powerful laptops, and more. Whether you’re upgrading or seeking the perfect tech solution, we provide expert advice and unbeatable deals to fit your needs.',
                      style: Apptext.black_400_14,),
                       const SizedBox(height: 24,),
                      const Text("Total 2 Products",style: Apptext.lightBlack1_500_14,),
                      const SizedBox(height: 16,),
                      ListView.separated(
                        shrinkWrap: true,
                        itemBuilder: (
                        
                        BuildContext context, int index) {
                          return Container(
                            
                             decoration:  BoxDecoration(
                              color: AppColors.whiteColor,
                                    borderRadius: BorderRadius.circular(16)
                                  ),
                            child: Row(
                              children: [
                                Container(
                                  width: 96,height: 96,
                                  decoration:  BoxDecoration(
                                    color: AppColors.phoneInputFillColor,
                                    borderRadius: BorderRadius.circular(16)
                                  ),
                                ),
                                const SizedBox(width: 14,),
                                const Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("iPhone XR",style: Apptext.black_600_14,),
                                    Text("256Raw ios 14",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w400,color: Color(0XFF32343E)),),
                                    SizedBox(height: 14,),
                                    Text("N180,000",style: Apptext.black_600_14,),
                                  ],
                                )
                              ],
                            ),
                          );
                          },
                         separatorBuilder: (BuildContext context, int index) {
                          return const SizedBox(height: 16,);
                           },
                          itemCount: 5,)
                    ],
                  ),
                )
            ],
          ),
          const Positioned(
            top: 55,
            left: 24,right: 24,
            child: vendorBadge(),
          )
        
        ],
      ),
      floatingActionButton: Container(
        padding: const EdgeInsets.all(10),
        width: 60,height: 60,
        decoration: BoxDecoration(
          color: AppColors.orangeColor,
          borderRadius: BorderRadius.circular(20)
        ),
        child:  IconButton(onPressed: (){
          // Get.to(()=>const AddNewBusinessScreen());
        }, icon: const Icon(Icons.add,color: AppColors.whiteColor,)),
      ),
      );
  }
}



class vendorBadge extends StatefulWidget {
  const vendorBadge({
    super.key,
  });

  @override
  State<vendorBadge> createState() => _vendorBadgeState();
}

class _vendorBadgeState extends State<vendorBadge> {
  @override
  Widget build(BuildContext context) {
    bool isSwiched=false;
    return SizedBox(
      height: 277,
      width: MediaQuery.of(context).size.width,
      child: Stack(
        children: [
          Positioned(
            bottom: 0,
            left: 0,right: 0,
            child: Container(
              padding: const EdgeInsets.only(right: 24,left: 24,bottom: 15,top: 63),
              // height: 220,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: const Color(0XFFF5F6FF),
                borderRadius: BorderRadius.circular(25)
              ),
              child:   Column(
                 crossAxisAlignment: CrossAxisAlignment.center,
                 mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  // const SizedBox(height: 53,),
                  const Text("Fine Brothers Ltd",style: Apptext.black_600_18,),
                  // const SizedBox(height: 5,),
                   Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [ 
                      Image.asset("assets/icons/Location.png"),const Text("26 Okpara Ave, Achara",style: Apptext.black_400_12,)],),
                    const SizedBox(height: 9,),
                    OutlinedButton(
                      style:  OutlinedButton.styleFrom(
                        backgroundColor: const Color(0XFFFFEDED),
                        side: const BorderSide(width: 1,color: Color(0XFFE50000)),
                        padding: const EdgeInsets.all(8),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                          // side: const BorderSide(width: 1,color: Color(0XFFE50000))
                        )
                      ),
                      onPressed: (){}, child: const Text("Show on map",style: Apptext.red_400_14,)),
                    // const SizedBox(height: 9,),
                     Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                       Switch(
                        value: isSwiched, 
                        onChanged: (v){
                          setState(() {
                            isSwiched=v;
                          });
                        }),
                        isSwiched?const Text("Offline",style: Apptext.black_500_14)
                       :const Text("Online",style: Apptext.black_500_14),
                       const Spacer(),
                       const Icon(Icons.star_rate_rounded,color: Colors.amberAccent,),const Text("4.8"),
                       const Spacer(),
                       const CircleAvatar(
                        radius: 18,
                        backgroundColor: AppColors.orangeColor,
                        foregroundColor: AppColors.whiteColor,
                        child: Icon(Icons.favorite_border_sharp,size: 24,))
                       ],),
                ],
              ),
            ),
          ),
          Positioned(
            top: 0,
            left: 0,right: 0,
            child: Container(
              width: 110,height: 110,
              decoration: const BoxDecoration(
                
                shape: BoxShape.circle,
                color: Color(0XFFBBCEFF)
              ),
              child: Center(
                child: Image.asset("assets/icons/fineBrother.png"),
              ),
            ),
          )
        ],
      ),
    );
  }
}