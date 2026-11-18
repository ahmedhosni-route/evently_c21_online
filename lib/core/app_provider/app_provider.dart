import 'package:flutter/material.dart';

class AppProvider extends ChangeNotifier {
  ThemeMode themeMode = ThemeMode.light;
  String langCode = "en";

  void changeTheme(ThemeMode theme) {
    themeMode = theme;
    notifyListeners();
  }


  void changeLanguage(String lang){
    langCode = lang;
    notifyListeners();
  }
}
