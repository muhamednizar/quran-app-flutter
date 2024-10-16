import 'package:flutter/material.dart';
import 'package:quran_app/core/Utils/assets_manager.dart';

class SettingsProvider extends ChangeNotifier {
  ThemeMode currentTheme = ThemeMode.light;
  String currentLanguage = 'en';

  void ChangeAppTheme(ThemeMode NewTheme) {
    if (currentTheme == NewTheme) return;
    currentTheme = NewTheme;
    notifyListeners();
  }

  String getBackgroundImage() {
    return currentTheme == ThemeMode.light
        ? AssetsManager.lightMainBg
        : AssetsManager.darkMainBg;
  }

  void ChangeAppLanguage(String NewLanguage) {
    if (currentLanguage == NewLanguage) return;
    currentLanguage = NewLanguage;
    notifyListeners();
  }

  bool englishIsSelected() {
    return currentLanguage == 'en';
  }

  bool arabicIsSelected() {
    return currentLanguage == 'ar';
  }
}
