import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferencesWrapper {
  static SharedPreferences prefs;

  init() async {
    prefs = await SharedPreferences.getInstance();
  }

  static saveLoginDetails() async {
    prefs = await SharedPreferences.getInstance();
    await prefs.setInt('Login', 1);
  }

  static Future<int> getLoginDetails() async {
    prefs = await SharedPreferences.getInstance();
    int value = prefs.get("Login");
    return value;
  }
}
