import 'package:flutter/material.dart';
import 'package:zamili_app/widget/colors_frave.dart';
import 'package:zamili_app/widget/text_custom.dart';

AppBar mainAppBar() => AppBar(
      toolbarHeight: 70,
      elevation: 2,
      title: const Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CustomText(
            text: 'Zameeli ',
            color: MyColors.primaryColor,
            fontSize: 18,
            fontWeight: FontWeight.w500,
          ),
          CustomText(
            text: 'App ',
          ),
        ],
      ),
      iconTheme: const IconThemeData(color: MyColors.primaryColor),
      actions: [
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.notifications_outlined,
            size: 30,
            color: MyColors.primaryColor,
          ),
        ),
      ],
    );
