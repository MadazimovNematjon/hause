import 'package:flutter/material.dart';

import 'colors.dart';

class CustomTextTheme{
  CustomTextTheme._();

  static const TextStyle button = TextStyle(
    fontSize: 15.0,
    fontWeight: FontWeight.w500,
    color: CustomColors.writeColor,
    fontFamily: 'Urbanist',
  );

  static const TextStyle textField = TextStyle(
    fontSize: 15.0,
    fontWeight: FontWeight.w600,
    color: CustomColors.diopsideBlueColor,
    fontFamily: 'Urbanist',
  );

  static const TextStyle subTitle1 = TextStyle(
    fontSize: 30.0,
    fontWeight: FontWeight.bold,
    color: CustomColors.washedBlackColor,
    fontFamily: 'Urbanist',
  );
}