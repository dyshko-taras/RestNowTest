import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rest_now_test/ui/pages/main/main_page_cubit.dart';
import 'package:rest_now_test/ui/pages/main/main_page_state.dart';
import 'package:rest_now_test/ui/theme/colors.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final MainPageCubit cubit = MainPageCubit();
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MainPageCubit, MainPageState>(
      bloc: cubit,
      builder: (context, state) {
        return const Scaffold(
          resizeToAvoidBottomInset: true,
          body: Stack(
            children: [
              SizedBox(
                width: double.infinity,
                height: double.infinity,
                child: ColoredBox(color: AppColors.black),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Placeholder(),
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}
