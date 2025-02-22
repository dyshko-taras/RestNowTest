import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rest_now_test/constants/strings.dart';
import 'package:rest_now_test/ui/pages/payment/payment_page_cubit.dart';
import 'package:rest_now_test/ui/pages/payment/payment_page_state.dart';
import 'package:rest_now_test/ui/theme/colors.dart';
import 'package:rest_now_test/ui/theme/types.dart';

class PaymentPage extends StatefulWidget {
  const PaymentPage({super.key});

  @override
  State<PaymentPage> createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
  final PaymentPageCubit cubit = PaymentPageCubit();
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PaymentPageCubit, PaymentPageState>(
      bloc: cubit,
      builder: (context, state) {
        return Scaffold(
          resizeToAvoidBottomInset: true,
          body: Stack(
            children: [
              const SizedBox(
                width: double.infinity,
                height: double.infinity,
                child: ColoredBox(color: AppColors.black),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const Placeholder(),
                  Text(
                    AppStrings.yourName,
                    style: AppTypes.f20Regular,
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}
