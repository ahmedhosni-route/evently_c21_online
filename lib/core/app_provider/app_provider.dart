import 'package:flutter/material.dart';

class AppProvider extends ChangeNotifier {
  ThemeMode themeMode = ThemeMode.dark;

  void changeTheme(ThemeMode theme) {
    themeMode = theme;
    notifyListeners();
  }
}
