
import 'package:benji_crm_v2/view/feature/management/widget/users_review_rating.dart';
import 'package:benji_crm_v2/view/styles/color_style.dart';
import 'package:benji_crm_v2/view/styles/text_style.dart';
import 'package:flutter/material.dart';

class ProductDetailScreen extends StatelessWidget {
  const ProductDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: const [
          Icon(Icons.notifications_none_rounded),
          //  Image.asset("assets/images/more-vertical.png"),
        ],
        leading: IconButton(
            onPressed: () {},
            icon: const Icon(Icons.arrow_back_ios_new_outlined)),
      ),
      body: Container(
        // color: AppColors.whiteColor,
        child: ListView(
          children: [
            Stack(
              children: [
                Container(
                  height: 250,
                  width: MediaQuery.sizeOf(context).width,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage("assets/image/product.png"))
                  ),
                ),
                Positioned(
                  bottom: 0,
                  child: Container(
                    padding: const EdgeInsets.only(
                        top: 24, right: 21, left: 21, bottom: 8),
                    width: MediaQuery.sizeOf(context).width,
                    //  height: 24,
                    decoration: const BoxDecoration(
                        color: AppColors.whiteColor,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(30),
                            topRight: Radius.circular(30))),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "iPhone XR",
                          style: Apptext.black_600_20,
                        ),
                        Text(
                          "N180,000",
                          style: Apptext.black_400_20,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 23),
              color: AppColors.whiteColor,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "Mark as Out of Stock",
                        style: Apptext.black_600_14,
                      ),
                      Transform.scale(
                        scale: 0.4,
                        child: Switch(value: true, onChanged: (v) {})),
                    ],
                  ),
                  const Text(
                      style: Apptext.black_400_14,
                      "This is a short description about the food you mentoned which is a restaurant food in this case."),
                      const SizedBox(height: 11,),
                  const Text(
                    "Extras",
                    style: Apptext.black_600_18,
                  ),
                  Container(
                    padding: const EdgeInsets.only(left: 8),
                    child: const Column(
                      children: [
                        Text("Power bank (12000)",style: TextStyle(
                          color: Color(0XFF5B5B5B),fontSize: 14,fontWeight: FontWeight.w400
                        ),),
                        Text("Power bank (12000)",style: TextStyle(
                          color: Color(0XFF5B5B5B),fontSize: 14,fontWeight: FontWeight.w400)),
                        Text("Power bank (12000)",style: TextStyle(
                          color: Color(0XFF5B5B5B),fontSize: 14,fontWeight: FontWeight.w400)),
                      ],
                    ),
                  ),
                  const SizedBox(height: 21,),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Reviews",
                        style: Apptext.black_600_18,
                      ),
                      Text(
                        "see more >",
                        style: Apptext.black_400_12,
                      ),
                    ],
                  ),
                  const SizedBox(height: 21,),
                  ListView.separated(
                    shrinkWrap: true,
                    itemBuilder: (BuildContext context, int index) {
                      return const UsersRaiewAndRating();
                    },
                    separatorBuilder: (BuildContext context, int index) {
                      return const SizedBox(
                        height: 8,
                      );
                    },
                    itemCount: 24,
                  ),
                   const SizedBox(height: 25,),
            OutlinedButton(
              style: OutlinedButton.styleFrom(
                backgroundColor: AppColors.orangeColor,
                fixedSize: Size(
                  MediaQuery.of(context).size.width, 48)
              ),
              onPressed: (){}, child: const Text("Update",style: Apptext.white_400_14,)),
            const SizedBox(height: 16,),
                ],
              ),
            ),
          
          ],
        ),
      ),
    );
  }
}
