import 'dart:async';

import 'package:after_layout/after_layout.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rest_now_test/constants/strings.dart';
import 'package:rest_now_test/ui/pages/payment/payment_page_cubit.dart';
import 'package:rest_now_test/ui/pages/payment/payment_page_state.dart';
import 'package:rest_now_test/ui/theme/button.dart';
import 'package:rest_now_test/ui/theme/colors.dart';
import 'package:rest_now_test/ui/theme/types.dart';

class PaymentPage extends StatefulWidget {
  const PaymentPage({super.key});

  @override
  State<PaymentPage> createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage>
    with AfterLayoutMixin<PaymentPage> {
  final PaymentPageCubit cubit = PaymentPageCubit();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PaymentPageCubit, PaymentPageState>(
      bloc: cubit,
      builder: (context, state) {
        return Scaffold(
          resizeToAvoidBottomInset: true,
          body: Stack(
            alignment: Alignment.center,
            children: [
              Visibility(
                visible: state.isLoading,
                child: Center(
                  child: SizedBox(
                    width: 40.w,
                    height: 40.h,
                    child: CircularProgressIndicator(
                      color: AppColors.orange,
                      backgroundColor: AppColors.white,
                      strokeWidth: 5.w,
                    ),
                  ),
                ),
              ),
              Visibility(
                visible: !state.isLoading,
                child: Center(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.w),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      spacing: 30.h,
                      children: [
                        ElevatedButton(
                          onPressed: () => cubit.onClick(context),
                          style: ButtonStyles.orangeButtonWithWhiteBorder(),
                          child: Text(
                            AppStrings.payment,
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
                ),
              ),
            ],
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
