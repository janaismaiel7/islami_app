import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Appconfgprovider extends ChangeNotifier {
  String appLang = 'en';
  ThemeMode appTheme = ThemeMode.system;
  static const String themeKey = 'theme';
  static const String langKey = 'language';
   Appconfgprovider() {
    _loadPreferences();
  }
  Future<void> changeLang(String newLang) async {
    if (appLang == newLang) {
      return;
    }
    appLang = newLang;

    notifyListeners();
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString(langKey, appLang);
  }

  changeTheme(ThemeMode newtheme) async {
    if (appTheme == newtheme) {
      return;
    }
    appTheme = newtheme;
    notifyListeners();
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString(themeKey, appTheme == ThemeMode.dark ? 'dark' : 'light');
  }

  bool isDarkMode() {
    return appTheme == ThemeMode.dark;
  }

  
  void _loadPreferences() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? theme = prefs.getString(themeKey);
    String? lang = prefs.getString(langKey);

    if (theme != null) {
      appTheme = theme == 'dark' ? ThemeMode.dark : ThemeMode.light;
    }

    if (lang != null) {
      appLang = lang;
    }

    notifyListeners();
  }


}
