import 'package:flutter/material.dart' show AppBar, FontWeight;
import 'package:zamili_app/widget/colors_frave.dart';
import 'package:zamili_app/widget/text_custom.dart';

AppBar appBarCustom(String title) {
  return AppBar(
    // backgroundColor: MyColors.primaryColor,
    title: CustomText(
      text: title,
      
      color: MyColors.blackText,
      fontSize: 18,
      fontWeight: FontWeight.w500,
    ),
  );
}
