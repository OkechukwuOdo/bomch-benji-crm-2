
import 'package:benji_crm_v2/view/feature/management/widget/users_review_rating.dart';
import 'package:benji_crm_v2/view/styles/color_style.dart';
import 'package:benji_crm_v2/view/styles/text_style.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get/get_navigation/get_navigation.dart';

class ReviewAndRatingScreen extends StatelessWidget {
  const ReviewAndRatingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          //  automaticallyImplyLeading: false,
          automaticallyImplyLeading: false,
          centerTitle: false,
          toolbarHeight: 137,
          backgroundColor: AppColors.whiteColor,
          title: Column(
            children: [
               Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  GestureDetector(
                    onTap: () => Get.back(),
                    child: const Icon(Icons.arrow_back_ios_new_outlined)),
                  const SizedBox(
                    width: 8,
                  ),
                  const Text(
                    "Reviews",
                    style: Apptext.black_500_18,
                  )
                ],
              ),
              const SizedBox(
                height: 19,
              ),
              SizedBox(
                height: 40,
                child: ListView.builder(
                    itemCount: 6,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Container(
                        margin: const EdgeInsets.only(right: 16),
                        child: OutlinedButton(
                          style: OutlinedButton.styleFrom(
                            // backgroundColor: Colors.transparent,
                              padding: const EdgeInsets.all(3),
                              shape: RoundedRectangleBorder(
                                side: const BorderSide(width: 2,color: Color(0XFFA9ABB1)),
                                  borderRadius: BorderRadius.circular(13))),
                          onPressed: () {},
                          child: index == 0
                              ? const Center(child: Text("All"))
                              : Row(
                                  children: [
                                    const Icon(
                                      Icons.star,
                                      color: Color(0XFFA9ABB1),
                                    ),
                                    const SizedBox(width: 4),
                                    Text("$index",style: const TextStyle(color: Color(0XFFA9ABB1),fontSize: 14,fontWeight: FontWeight.w600),)
                                  ],
                                ),
                        ),
                      );
                    }),
              )
            ],
          ),
        ),
        body: Padding(
            padding: const EdgeInsets.symmetric(vertical: 25.0, horizontal: 16),
            child: ListView.separated(
              itemCount: 5,
              itemBuilder: (contex, index) {
                return const UsersRaiewAndRating();
              },
              separatorBuilder: (BuildContext context, int index) {
                return const SizedBox(
                  height: 24,
                );
              },
            )));
  }
}

