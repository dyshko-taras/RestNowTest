import 'package:dartz/dartz.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rest_now_test/constants/app_preferences.dart';
import 'package:rest_now_test/constants/strings.dart';
import 'package:rest_now_test/model/todo/todo.dart';
import 'package:rest_now_test/repository/abstract_todo_repository.dart';
import 'package:rest_now_test/repository/network/todo_repository.dart';
import 'package:rest_now_test/service/api_service.dart';
import 'package:rest_now_test/ui/components/app_snackbar.dart';
import 'package:rest_now_test/ui/pages/main/main_page_state.dart';
import 'package:rest_now_test/utils/network_util.dart';

class MainPageCubit extends Cubit<MainPageState> {
  MainPageCubit() : super(MainPageState());

  AbstractTodoRepository repository = TodoRepository(ApiService());

  Future<void> init() async {
    String lastPayment = await AppPreferences.getCurrentDateTime();
    emit(state.copyWith(lastPayment: lastPayment));
  }

  Future<void> onStartMassageClick(BuildContext context) async {
    final result = await repository.getTodo();
    _handleResult(context, result);
  }

  Future<void> onStopMassageClick(BuildContext context) async {
    final result = await repository.getError();
    _handleResult(context, result);
  }

  Future<void> _handleResult(
      BuildContext context, Either<String, Todo> result) async {
    if (await checkInternetConnection()) {
      result.fold(
        (failure) {
          if (context.mounted) {
            AppSnackBars.showErrorSnackBar(context, failure);
          }
        },
        (todo) {
          AppSnackBars.showSuccessSnackBar(context, 'Success');
        },
      );
    } else {
      if (context.mounted) {
        AppSnackBars.showErrorSnackBar(context, AppStrings.connectionError);
      }
    }
  }
}
