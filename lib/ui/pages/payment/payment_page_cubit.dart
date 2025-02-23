import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rest_now_test/constants/app_preferences.dart';
import 'package:rest_now_test/constants/routes.dart';
import 'package:rest_now_test/constants/strings.dart';
import 'package:rest_now_test/ui/components/app_snackbar.dart';
import 'package:rest_now_test/ui/pages/payment/payment_page_state.dart';

class PaymentPageCubit extends Cubit<PaymentPageState> {
  PaymentPageCubit() : super(PaymentPageState());

  Future<void> init() async {
    String lastPayment = await AppPreferences.getCurrentDateTime();
    emit(state.copyWith(lastPayment: lastPayment));
  }

  Future<void> onClick(BuildContext context) async {
    emit(state.copyWith(isLoading: true));
    await AppPreferences.saveCurrentDateTime();
    await Future.delayed(const Duration(seconds: 3));
    if (context.mounted) {
      AppSnackBars.showSuccessSnackBar(context, AppStrings.paymentSuccess);
      navigateToMainPage(context);
    }
  }

  void navigateToMainPage(BuildContext context) {
    Navigator.pushNamedAndRemoveUntil(
      context,
      AppRoutes.main,
      (route) => false,
    );
  }
}
