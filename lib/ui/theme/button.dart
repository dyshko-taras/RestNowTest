import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rest_now_test/ui/theme/colors.dart';
import 'package:rest_now_test/ui/theme/types.dart';

class ButtonStyles {
  static ButtonStyle orangeButtonWithWhiteBorder() {
    return ElevatedButton.styleFrom(
      foregroundColor: AppColors.white,
      backgroundColor: AppColors.orange,
      padding: EdgeInsets.symmetric(horizontal: 40.w, vertical: 10.h),
      textStyle: AppTypes.f20Bold,
      alignment: Alignment.center,
      elevation: 0,
      minimumSize: const Size(0, 0),
      side: const BorderSide(color: AppColors.white),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(10.r)),
      ),
    );
  }
}
