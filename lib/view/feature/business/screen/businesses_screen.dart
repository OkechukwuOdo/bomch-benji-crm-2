
import 'package:benji_crm_v2/view/feature/business/widget/custom_search_field.dart';
import 'package:benji_crm_v2/view/styles/color_style.dart';
import 'package:benji_crm_v2/view/styles/text_style.dart';
import 'package:flutter/material.dart';

class AllBusinessesScreen extends StatelessWidget {
  const AllBusinessesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: false,
        title: const Row(
          children: [
            Icon(Icons.arrow_back_ios_new_outlined),
            Text(
              "Businesses",
              style: Apptext.black_500_24,
            )
          ],
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        children: [
          const CustomSearchField(),
          const SizedBox(
            height: 24,
          ),
          const Text(
            "Total 10 Businesses",
            style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 14,
                color: Color(0xFF9C9BA6)),
          ),
          const SizedBox(
            height: 16,
          ),
          ListView.separated(
              shrinkWrap: true,
              itemBuilder: (contex, index) {
                return Expanded(
                  child: Container(
                    padding: const EdgeInsets.only(right: 24),
                    decoration: BoxDecoration(
                        color: AppColors.whiteColor,
                        borderRadius: BorderRadius.circular(16)),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 96,
                          height: 96,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16),
                              color: AppColors.orangeColor),
                        ),
                        const SizedBox(
                          width: 18,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(
                              height: 8,
                            ),
                            const Text(
                              "Fine Brothers Ltd",
                              style: Apptext.black_600_14,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                               Image.asset("assets/icons/Location.png"),
                                const SizedBox(
                                  width: 160,
                                  height: 23,
                                  child: Text(
                                    overflow: TextOverflow.ellipsis,
                                    "26 Okpara Ave, Achara",
                                    style: Apptext.grey4_400_12,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            Row(
                              children: [
                                Image.asset("assets/icons/cac.png"),
                                const SizedBox(width: 5,),
                                const Text(
                                  "CAC: 9567325986567",
                                  style: Apptext.black_400_12,
                                ),
                              ],
                            ),
                          ],
                        ),
                        const Spacer(),
                        const Padding(
                          padding: EdgeInsets.only(top: 8.0),
                          child: Row(
                            children: [
                              Icon(Icons.star_rate_rounded),
                              Text("4.8")
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                );
              },
              separatorBuilder: (contex, index) {
                return const SizedBox(
                  height: 16,
                );
              },
              itemCount: 5)
        ],
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
