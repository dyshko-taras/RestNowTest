import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:rest_now_test/app.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    DevicePreview(
      builder: (context) => const MyApp(),
    ),
  );
}
