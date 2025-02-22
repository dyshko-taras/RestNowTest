import 'package:flutter/material.dart';
import 'package:rest_now_test/constants/fonts.dart';
import 'package:rest_now_test/ui/theme/colors.dart';

ThemeData createTheme() {
  return ThemeData(
    useMaterial3: false,
    primaryColor: Colors.white,
    colorScheme: const ColorScheme.light(
      error: Colors.red,
      onSurface: AppColors.white,
    ),
    fontFamily: AppFonts.mainFont,
    scaffoldBackgroundColor: Colors.transparent,
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.transparent,
      centerTitle: false,
      elevation: 0,
    ),
    dividerColor: AppColors.white,
  );
}
