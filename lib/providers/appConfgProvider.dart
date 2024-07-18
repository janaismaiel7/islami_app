import 'package:flutter/material.dart';

class Appconfgprovider extends ChangeNotifier {
 String appLang = 'en';
  ThemeMode appTheme = ThemeMode.system;

  void changeLang(String newLang) {
    if (appLang == newLang) {
      return;
    }
    appLang = newLang;
    notifyListeners();
  }

  changeTheme(ThemeMode newtheme) {
    if (appTheme == newtheme) {
      return;
    }
    appTheme = newtheme;
    notifyListeners();
  }

  bool isDarkMode() {
    return ThemeMode == ThemeMode.dark;
  }
}
