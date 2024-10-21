import 'package:benji_crm_v2/view/feature/business/screen/all_vendors_screen.dart';
import 'package:benji_crm_v2/view/feature/business/screen/businesses_screen.dart';
import 'package:benji_crm_v2/view/feature/business/screen/sells_history.dart';
import 'package:benji_crm_v2/view/feature/business/screen/transaction_history.dart';
import 'package:benji_crm_v2/view/feature/business/screen/withdrawal_page.dart';
import 'package:benji_crm_v2/view/feature/management/screen/crm_profile_page.dart';
import 'package:benji_crm_v2/view/feature/management/screen/profile_info_page.dart';
import 'package:benji_crm_v2/view/feature/management/widget/custom_app_drawer.dart';
import 'package:benji_crm_v2/view/feature/management/widget/dashboard_profile_buttom_navbar.dart';
import 'package:benji_crm_v2/view/styles/color_style.dart';
import 'package:benji_crm_v2/view/styles/text_style.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';

class CRMDashboard extends StatefulWidget {
  const CRMDashboard({super.key});

  @override
  State<CRMDashboard> createState() => _CRMDashboardState();
}

class _CRMDashboardState extends State<CRMDashboard> {
  bool displayAll = false;
  // int selectedButtomNavIt = 0;
  int selectedNavItem = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const CustomAppDrawer(),
      appBar: AppBar(
        leading: Builder(builder: (context) {
          return IconButton(
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
            icon: Image.asset("assets/icons/drawer.png"),
          );
        }),
        centerTitle: false,
        toolbarHeight: 95,
        // automaticallyIm
        //hplyLeading: false,
        title: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Hi CRM Jane,",
              style: Apptext.red_600_13,
            ),
            Text(
              "Ogbete Main Market, Enugu",
              style: Apptext.grey_400_13,
            )
          ],
        ),
        actions: [
          GestureDetector(
            onTap: () {
              Get.to(());
            },
            child: CircleAvatar(
                foregroundColor: AppColors.whiteColor,
                backgroundColor: AppColors.orangeColor,
                child: Image.asset("assets/icons/Notification.png")),
          ),
          const SizedBox(
            width: 8,
          ),
          GestureDetector(
             onTap: () {
              Get.to(()=>const ProfileInfoPage());
            },
            child: CircleAvatar(
                backgroundColor: AppColors.orangeColor,
                child: Image.asset(
                  "assets/icons/Bag.png",
                  color: AppColors.whiteColor,
                )),
          ),
          const SizedBox(
            width: 24,
          )
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        children: [
           Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Finacial",
                    style: Apptext.grey2_400_22,
                  ),
                  Text(
                    "Overview",
                    style: Apptext.black_400_28,
                  )
                ],
              ),
              TextButton(onPressed: () { 
                Get.to(()=>const WithdrawalScreen());
               }, child: const Text(
                "Withdraw",
                style: Apptext.red_400_18,
              ),)
            ],
          ),
          const SizedBox(
            height: 12,
          ),
          Row(
            children: [
              Container(
                padding: const EdgeInsets.only(left: 30, top: 18, bottom: 18),
                width: MediaQuery.of(context).size.width / 2 - 30,
                height: 170,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(28),
                    color: AppColors.whiteColor),
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Today's",
                      style: Apptext.black_400_16,
                    ),
                    Text(
                      "Sales",
                      style: Apptext.black_400_22,
                    ),
                    SizedBox(
                      height: 42,
                    ),
                    Text(
                      "16",
                      style: Apptext.black_500_26,
                    )
                  ],
                ),
              ),
              const SizedBox(
                width: 9,
              ),
              Container(
                padding: const EdgeInsets.only(
                    left: 16, top: 18, bottom: 18, right: 16),
                width: MediaQuery.of(context).size.width / 2 - 30,
                // height: 170,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(28),
                    color: AppColors.whiteColor),
                child: const Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Today's",
                          style: Apptext.black_400_16,
                        ),
                        Text(
                          "Income",
                          style: Apptext.black_400_22,
                        ),
                        SizedBox(
                          height: 42,
                        ),
                        FittedBox(
                          fit: BoxFit.fitWidth,
                          child: Text(
                            overflow: TextOverflow.ellipsis,
                            "#180,000",
                            style: Apptext.black_500_24,
                          ),
                        )
                      ],
                    ),
                    CircleAvatar(
                      radius: 15,
                      backgroundColor: AppColors.orangeColor,
                      foregroundColor: AppColors.whiteColor,
                      child: Icon(
                        Icons.arrow_outward,
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
          const SizedBox(
            height: 16,
          ),
          activitiesAndMore(context),
          const SizedBox(
            height: 24,
          ),
          callManager(context),
          const SizedBox(
            height: 21,
          ),
          Expanded(
            child: ListView.separated(
              shrinkWrap: true,
              separatorBuilder: (BuildContext context, int index) {
                return const SizedBox(
                  height: 16,
                );
              },
              itemCount: 3,
              itemBuilder: (BuildContext context, int index) {
                return const BusinessDetailHolder();
              },
            ),
          ),
          const SizedBox(
            height: 16,
          )
        ],
      ),
      bottomNavigationBar:  DashboardProfileButtomNavbar(
        isSelected: selectedNavItem,
    onTapProfile: () {
          setState(() {
            selectedNavItem = 2;
          });
          Get.to(() => const CRMProfilePage());
        },
        onTapDashBoard: () {
          setState(() {
            selectedNavItem = 1;
          });
          Get.to(() => const CRMDashboard());
        },),
    );
  }

  activitiesAndMore(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 26, right: 26, bottom: 28, top: 14),
      // height: 133,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(18), color: AppColors.whiteColor),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "Activities",
                style: Apptext.lightBlack1_500_14,
              ),
              TextButton(
                  onPressed: () {
                    setState(() {
                      displayAll = !displayAll;
                    });
                  },
                  child: const Text(
                    "See More",
                    style: Apptext.grey1_400_12,
                  ))
            ],
          ),
          const SizedBox(
            height: 16,
          ),
          //
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                onTap: () {
                  Get.to(()=>const AllVendorsScreen());
                },
                child: Column(children: [
                  Image.asset("assets/icons/vendor.png"),
                  const SizedBox(
                    height: 2,
                  ),
                  const Text(
                    "Vendor",
                    style: Apptext.black_400_12,
                  )
                ]),
              ),
              GestureDetector(
                onTap: () {
                  Get.to(()=>const AllBusinessesScreen());
                },
                child: Column(
                  children: [
                    // Image.asset("assets/icons/income.png"),
                    Image.asset("assets/icons/business.png"),
                    const SizedBox(
                      height: 2,
                    ),
                    const Text(
                      "Business",
                      style: Apptext.black_400_12,
                    )
                  ],
                ),
              ),
              GestureDetector(
                onTap: () {
                  Get.to(()=>const TransactionHistoryScreen());
                },
                child: Column(
                  children: [
                    Image.asset("assets/icons/transaction.png"),
                    const SizedBox(
                      height: 2,
                    ),
                    const Text(
                      "Trans history",
                      style: Apptext.black_400_12,
                    )
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 16,
          ),
          Visibility(
            visible: displayAll,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    Get.to(()=>const WithdrawalScreen());
                  },
                  child: Column(
                    children: [
                      Image.asset("assets/icons/Wallet.png"),
                      const SizedBox(
                        height: 2,
                      ),
                      const Text(
                        "Withdrawal",
                        style: Apptext.black_400_12,
                      )
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Get.to(()=>const SellsHistoryScreen());
                  },
                  child: Column(
                    children: [
                      Image.asset("assets/icons/Ticket.png"),
                      const SizedBox(
                        height: 2,
                      ),
                      const Text(
                        "Sells History",
                        style: Apptext.black_400_12,
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  callManager(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 17),
      decoration: BoxDecoration(
          color: const Color(0XFF848484),
          borderRadius: BorderRadius.circular(18)),
      child: ListTile(
        title: const Text("Smith James"),
        subtitle: const Text("Manager"),
        titleTextStyle: Apptext.white_500_12,
        subtitleTextStyle: Apptext.white_500_12,
        leading: const CircleAvatar(
          radius: 24,
        ),
        trailing: Container(
          width: 40,
          height: 40,
          decoration: BoxDecoration(
              color: AppColors.orangeColor,
              borderRadius: BorderRadius.circular(15)),
          child: const Icon(
            Icons.phone,
            color: AppColors.whiteColor,
          ),
        ),
      ),
    );
  }
}

class BusinessDetailHolder extends StatelessWidget {
  const BusinessDetailHolder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16), color: AppColors.whiteColor),
      child: Wrap(
        children: [
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: AppColors.phoneInputFillColor),
            height: 96,
            width: 96,
          ),
          const SizedBox(
            width: 16,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Fine Brother Ltd",
                style: Apptext.black_600_14,
              ),
              Wrap(
                children: [
                  Image.asset("assets/icons/Location.png"),
                  const SizedBox(
                    width: 3,
                  ),
                  const Text(
                    overflow: TextOverflow.ellipsis,
                    "26 Okara Avenuew, Achara",
                    style: Apptext.grey3_400_12,
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              Wrap(
                children: [
                  Image.asset("assets/icons/cac.png"),
                  const SizedBox(
                    width: 3,
                  ),
                  const Text(
                    overflow: TextOverflow.ellipsis,
                    "CAC: 4949499494949494",
                    style: Apptext.lightBlack_400_12,
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}