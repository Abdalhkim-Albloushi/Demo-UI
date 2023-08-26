import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:zamili_app/view/main/main_view.dart';
import 'package:zamili_app/widget/colors_frave.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          centerTitle: true,
          elevation: 5,
          iconTheme: IconThemeData(color: MyColors.blackText),
        ),
        colorScheme: ColorScheme.fromSeed(seedColor: MyColors.primaryColor),
        useMaterial3: true,
      ),
      home: const MainView(),
    );
  }
}
