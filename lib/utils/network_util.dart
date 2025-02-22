import 'dart:developer';

import 'package:connectivity_plus/connectivity_plus.dart';

Future<bool> checkInternetConnection() async {
  final connectivityResult = await (Connectivity().checkConnectivity());
  log('mobile: ${connectivityResult.contains(ConnectivityResult.mobile)}');
  log('wifi: ${connectivityResult.contains(ConnectivityResult.wifi)}');
  log('vpn: ${connectivityResult.contains(ConnectivityResult.vpn)}');
  return connectivityResult.contains(ConnectivityResult.mobile) ||
      connectivityResult.contains(ConnectivityResult.wifi) ||
      connectivityResult.contains(ConnectivityResult.vpn);
}