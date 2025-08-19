import 'package:flutter/material.dart';

class SettingProvider extends ChangeNotifier {
  // Default theme mode
  ThemeMode themeMode = ThemeMode.light;

  // Default locale (English)
  Locale currentLocale = const Locale('en');

  // ================== Theme Handling ==================
  void enableDarkTheme() {
    themeMode = ThemeMode.dark;
    notifyListeners();
  }

  void enableLightTheme() {
    themeMode = ThemeMode.light;
    notifyListeners();
  }

  bool isDark() {
    return themeMode == ThemeMode.dark;
  }

  // ================== Localization Handling ==================
  void changeLanguage(String languageCode) {
    currentLocale = Locale(languageCode);
    notifyListeners();
  }
}
