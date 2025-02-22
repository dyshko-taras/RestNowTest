import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rest_now_test/constants/fonts.dart';
import 'colors.dart';

class AppTypes {
  
  static TextStyle f20Regular = _buildTextStyle();

  static TextStyle _buildTextStyle({
    String fontFamily = AppFonts.mainFont,
    double size = 20,
    FontWeight weight = FontWeight.w700,
    Color color = AppColors.white,
    TextDecoration? decoration,
    Color decorationColor = AppColors.black,
  }) {
    return TextStyle(
        fontFamily: fontFamily,
        fontSize: size,
        fontWeight: weight,
        color: color,
        decoration: decoration,
        decorationColor: decorationColor);
  }
}
