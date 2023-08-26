import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ionicons/ionicons.dart';
import 'package:zamili_app/core/extension.dart';
import 'package:zamili_app/view/home/serves_view.dart';
import 'package:zamili_app/view/setting/add_servies_view.dart';
import 'package:zamili_app/widget/colors_frave.dart';
import 'package:zamili_app/widget/text_custom.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        physics: const BouncingScrollPhysics(),
        padding: const EdgeInsets.all(myPadding),
        children: [
          SizedBox(
            height: 120,
            child: ListView(
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              children: [
                GestureDetector(
                  onTap: () {
                    Get.to(() => const ServerView(),
                        transition: Transition.downToUp,
                        duration: const Duration(milliseconds: 600));
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(90),
                          border: Border.all(
                              color: MyColors.primaryColor, width: 1.5),
                        ),
                        child: const CircleAvatar(
                          radius: 35,
                          backgroundColor: MyColors.blackText,
                          child: Icon(
                            Ionicons.server,
                            size: 30,
                            color: MyColors.orangeColor,
                          ),
                        ),
                      ),
                      5.0.hSize,
                      const CustomText(
                        text: 'All',
                        textAlign: TextAlign.center,
                        fontWeight: FontWeight.bold,
                        fontSize: 10,
                      ),
                    ],
                  ).paddingAll(myPadding / 2),
                ),
                for (int i = 0; i < serviesTypeList.length; i++)
                  GestureDetector(
                    onTap: () {
                      Get.to(() => const ServerView(),
                          transition: Transition.downToUp,
                          duration: const Duration(milliseconds: 600));
                    },
                    child: customCategory(
                            'assets/${serviesTypeList[i].iconData}',
                            serviesTypeList[i].title)
                        .paddingAll(myPadding / 2),
                  ),
              ],
            ),
          ),
          (myPadding * 3).hSize,
          const CustomText(
            text: 'more features',
            fontWeight: FontWeight.w500,
            fontSize: 14,
          ),
          const CardCat(),
          myPadding.hSize,
          const CustomText(
            text: 'more features',
            fontWeight: FontWeight.w500,
            fontSize: 14,
          ),
          const CardCat(),
        ],
      ),
    );
  }

  Widget customCategory(String image, String text) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(90),
            border: Border.all(color: MyColors.primaryColor, width: 1.5),
          ),
          child: CircleAvatar(
            radius: 35,
            backgroundImage: AssetImage(image),
          ),
        ),
        5.0.hSize,
        CustomText(
          text: text,
          textAlign: TextAlign.center,
          fontWeight: FontWeight.bold,
          fontSize: 10,
        ),
      ],
    );
  }
}

class CardCat extends StatelessWidget {
  const CardCat({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRect(
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
        child: Card(
          child: Column(
            children: [
              (myPadding * 3).hSize,
              const Icon(
                Ionicons.phone_landscape_sharp,
                size: 50,
                color: MyColors.iconColor,
              ),
              const CustomText(
                text: 'Ads',
              ),
              const CustomText(
                text: 'Make your ads or other thing',
                color: MyColors.iconColor,
                fontWeight: FontWeight.normal,
              ),
              (myPadding * 3).hSize,
            ],
          ),
        ).paddingOnly(top: myPadding),
      ),
    );
  }
}
