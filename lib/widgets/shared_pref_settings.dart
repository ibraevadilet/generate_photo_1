import 'package:shared_preferences/shared_preferences.dart';

class SharedSettings {
  static Future<void> setString(String key, String value) async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setString(key, value);
  }

  static Future<dynamic> getString(String key) async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString(key);
  }
}
