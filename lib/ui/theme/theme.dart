import 'package:flutter/material.dart';
import 'package:rest_now_test/constants/fonts.dart';
import 'package:rest_now_test/ui/theme/colors.dart';

ThemeData createTheme() {
  return ThemeData(
    useMaterial3: false,
    primaryColor: AppColors.white,
    colorScheme: const ColorScheme.light(
      error: AppColors.errorColorRed,
      onSurface: AppColors.white,
    ),
    fontFamily: AppFonts.mainFont,
    scaffoldBackgroundColor: AppColors.black,
    appBarTheme: const AppBarTheme(
      backgroundColor: AppColors.transparent,
      centerTitle: false,
      elevation: 0,
    ),
    dividerColor: AppColors.white,
  );
}
