import 'package:flutter/material.dart';

class AppProvider extends ChangeNotifier {
  ThemeMode currentTheme = ThemeMode.light;

  changeTheme(ThemeMode newTheme) {
    if (currentTheme == newTheme) return;
    currentTheme = newTheme;
    notifyListeners();
  }

  bool isDark() {
    return currentTheme == ThemeMode.dark;
  }

  String backgroundImage() {
    return isDark()
        ? "assets/image/background_Dark.png"
        : "assets/image/background.png";
  }

  Locale currentLocale = const Locale("en");

  changeLanguage(Locale newLocale) {
    if (currentLocale == newLocale) return;
    currentLocale = newLocale;
    notifyListeners();
  }

  bool isEnglish() {
    return currentLocale == const Locale("en");
  }
}
