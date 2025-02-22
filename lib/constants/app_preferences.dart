import 'package:rest_now_test/utils/time_util.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AppPrefsKeys {
  static const String dateTimeKey = 'current_date_time';
}

class AppPreferences {
  static Future<void> saveCurrentDateTime() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String formattedDateTime = formatDateTime(DateTime.now());
    await prefs.setString(AppPrefsKeys.dateTimeKey, formattedDateTime);
  }

  static Future<String> getCurrentDateTime() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString(AppPrefsKeys.dateTimeKey) ?? '-';
  }
}
