import 'package:douban/util/constant.dart';
import 'package:douban/util/storage_manager.dart';
import 'package:flutter/material.dart';


String themeName(ThemeMode mode) {
  switch (mode) {
    case ThemeMode.dark:
      return 'dark';
    case ThemeMode.light:
      return 'light';
    default:
      return 'system';
  }
}

String themeKey(ThemeMode mode) {
  switch (mode) {
    case ThemeMode.dark:
      return 'settings.theme_dark';
    case ThemeMode.light:
      return 'settings.theme_light';
    default:
      return 'settings.theme_system';
  }
}

ThemeMode fetchThemeMode(String name) {
  switch (name) {
    case 'dark':
      return ThemeMode.dark;
    case 'light':
      return ThemeMode.light;
    default:
      return ThemeMode.system;
  }
}

ThemeData lightData = ThemeData.light().copyWith(
    primaryColor: ConsColor.theme);
ThemeData darkData = ThemeData.dark();



class ThemeViewModel extends ChangeNotifier {

  ThemeData data(BuildContext context) {
    return isDark(context)? darkData: lightData;
  }

  bool isDark(BuildContext context) {
    return Theme.of(context).brightness == Brightness.dark;
  }

  change(ThemeMode mode) {
    StorageManager.themeMode = mode;
    notifyListeners();
  }

}