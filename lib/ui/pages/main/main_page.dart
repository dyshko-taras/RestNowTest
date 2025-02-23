import 'dart:async';

import 'package:after_layout/after_layout.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rest_now_test/constants/strings.dart';
import 'package:rest_now_test/ui/pages/main/main_page_cubit.dart';
import 'package:rest_now_test/ui/pages/main/main_page_state.dart';
import 'package:rest_now_test/ui/theme/button.dart';
import 'package:rest_now_test/ui/theme/colors.dart';
import 'package:rest_now_test/ui/theme/types.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> with AfterLayoutMixin<MainPage> {
  final MainPageCubit cubit = MainPageCubit();
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MainPageCubit, MainPageState>(
      bloc: cubit,
      builder: (context, state) {
        return Scaffold(
          resizeToAvoidBottomInset: true,
          body: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              spacing: 30.h,
              children: [
                ElevatedButton(
                  onPressed: () => cubit.onStartMassageClick(context),
                  style: ButtonStyles.orangeButtonWithWhiteBorder(),
                  child: Text(
                    AppStrings.startMassage,
                    style: AppTypes.f20Bold,
                  ),
                ),
                ElevatedButton(
                  onPressed: () => cubit.onStopMassageClick(context),
                  style: ButtonStyles.orangeButtonWithWhiteBorder(),
                  child: Text(
                    AppStrings.stopMassage,
                    style: AppTypes.f20Bold,
                  ),
                ),
                Text(
                  AppStrings.lastPayment,
                  style: AppTypes.f20Bold,
                ),
                Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 20.w,
                    vertical: 10.h,
                  ),
                  decoration: BoxDecoration(
                    color: AppColors.transparent,
                    borderRadius: BorderRadius.circular(10.r),
                    border: Border.all(color: AppColors.white),
                  ),
                  child: Text(
                    state.lastPayment,
                    style: AppTypes.f20Bold,
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  @override
  FutureOr<void> afterFirstLayout(BuildContext context) {
    cubit.init();
  }
}
