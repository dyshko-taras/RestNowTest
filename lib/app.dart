import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:rest_now_test/constants/routes.dart';
import 'package:rest_now_test/translations/messages.dart';
import 'package:rest_now_test/ui/pages/payment/payment_page.dart';
import 'package:rest_now_test/ui/theme/theme.dart';
import 'package:syncfusion_localizations/syncfusion_localizations.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      child: GetMaterialApp(
        localizationsDelegates: const [
          GlobalMaterialLocalizations.delegate,
          SfGlobalLocalizations.delegate,
        ],
        supportedLocales: const [
          Locale('en', 'US'),
          Locale('uk', 'UA'),
        ],
        locale: const Locale('uk', 'UA'),
        fallbackLocale: const Locale('en', 'US'),
        translations: Messages(),
        theme: createTheme(),
        initialRoute: AppRoutes.payment,
        routes: {
          AppRoutes.payment: (context) => const PaymentPage(),
          AppRoutes.main: (context) => const PaymentPage(),
        },
      ),
    );
  }
}
