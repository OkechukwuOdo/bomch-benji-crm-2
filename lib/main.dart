import 'package:benji_crm_v2/view/feature/business/screen/business_detail.dart';
import 'package:benji_crm_v2/view/styles/color_style.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
          appBarTheme: const AppBarTheme(
              surfaceTintColor: Colors.white,
              backgroundColor: AppColors.backgroundColor
              // color: Colors.white,
              ),
          scaffoldBackgroundColor: AppColors.backgroundColor,
          textTheme:
          GoogleFonts.poppinsTextTheme(),),
              // const TextTheme(bodyMedium: TextStyle(fontFamily: "Poppins"))),
      home: const  BusinessProfileScreen(),
    );
  }
}

