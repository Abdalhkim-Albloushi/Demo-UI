import 'dart:ui';

import 'package:flutter/material.dart'
    show BuildContext, Divider, EdgeInsets, MediaQuery, Padding, SizedBox, ThemeMode, Widget;

import 'package:flutter/foundation.dart' show kDebugMode;
import 'package:zamili_app/widget/colors_frave.dart';

typedef PressBTN = void Function()?;
const double myPadding = 16.1;

extension IfDebugging on String {
  String? get ifDebugMode => kDebugMode ? this : null;
}

extension ChangeColors<T> on bool {
  ThemeMode get selectColorsApp =>
      this == true ? ThemeMode.dark : ThemeMode.dark;
}

extension CustomeSizeBoxH on double {
  SizedBox get hSize => SizedBox(
        height: this,
      );
}

extension CustomeSizeBoxW on double {
  SizedBox get wSize => SizedBox(
        width: this,
      );
}

extension CustomDivider on double {
  Divider get myDivider => Divider(
        color: MyColors.primaryColor,
        thickness: this,
      );
}

extension CustomPading on Widget {
  Padding customPadding(double d) => Padding(
        padding: EdgeInsets.all(d),
        child: this,
      );
}


extension CustomSize on BuildContext {
  Size get mySize => MediaQuery.of(this).size;
}


