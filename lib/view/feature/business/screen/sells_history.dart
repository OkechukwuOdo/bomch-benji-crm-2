
import 'package:benji_crm_v2/view/feature/business/widget/custom_search_field.dart';
import 'package:benji_crm_v2/view/styles/text_style.dart';
import 'package:flutter/material.dart';

class SellsHistoryScreen extends StatelessWidget {
  const SellsHistoryScreen({super.key});

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
              "Sells history",
              style: Apptext.black_500_24,
            )
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 14,
            ),
            const CustomSearchField(),
            const SizedBox(
              height: 24,
            ),
            const Text("Today"),
            const SizedBox(
              height: 16,
            ),
            Expanded(
                child: ListView.separated(
                
              // shrinkWrap: true,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  padding: const EdgeInsets.symmetric(
                    vertical: 12,
                  ),
                  child: Row(
                    // crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: 56,
                        height: 56,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(9),
                            image: const DecorationImage(
                              fit: BoxFit.fill,
                              image: AssetImage("assets/image/product.png"))
                            ),
                      ),
                      const SizedBox(
                        width: 12,
                      ),
                      const SizedBox(
                        // width: 264,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 6,
                            ),
                            Text(
                              "iPhone XR- 256Raw",
                              style: Apptext.black_500_14,
                            ),
                            SizedBox(
                              height: 4,
                            ),
                            Text("+2 items", style: Apptext.black_400_12),
                            SizedBox(
                              height: 7,
                            ),
                            Text("29/03/24"),
                          ],
                        ),
                        
                      ),
                      const Spacer(),
                       const Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                         children: [
                           Text(
                                      "+180,000",
                                      style: TextStyle(
                                          color: Color(0XFF06A53B),
                                          fontSize: 18,
                                          fontWeight: FontWeight.w500),
                                    ),
                         ],
                       )
                    ],
                  ),
                );
              },
              separatorBuilder: (BuildContext context, int index) {
                return const Divider();
              },
              itemCount: 15,
            ))
          ],
        ),
      ),
    );
  }
}
