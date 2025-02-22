import 'package:rest_now_test/utils/time_util.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AppPrefsKeys {
  static const String _dateTimeKey = 'current_date_time';
}

class AppPreferences {
  AppPreferences(this._sharedPreferences);
  final SharedPreferences _sharedPreferences;

  void saveCurrentDateTime() {
    String formattedDateTime = formatDateTime(DateTime.now());
    _sharedPreferences.setString(AppPrefsKeys._dateTimeKey, formattedDateTime);
  }

  String getCurrentDateTime() {
    return _sharedPreferences.getString(AppPrefsKeys._dateTimeKey) ?? '';
  }
}
