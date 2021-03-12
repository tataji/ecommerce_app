import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferencesWrapper {
  static late SharedPreferences prefs;

  init() async {
    prefs = await SharedPreferences.getInstance();
  }

  static saveLoginDetails() async {
    prefs = await SharedPreferences.getInstance();
    await prefs.setInt('Login', 1);
  }

  static Future<int?> getLoginDetails() async {
    prefs = await SharedPreferences.getInstance();
    if(prefs.containsKey("Login")) {
      return prefs.getInt("Login");
    }
    return -1;
  }
  static clearLoginDetails() async {
    prefs = await SharedPreferences.getInstance();
    await prefs.clear();
  }
}
