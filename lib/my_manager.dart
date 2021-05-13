import 'package:flutter/material.dart';
import 'package:theme_mode_handler/theme_mode_manager_interface.dart';

class MyManager implements IThemeModeManager {
  ThemeMode themeMode = ThemeMode.dark;
  @override
  Future<String> loadThemeMode() async {
    themeMode = themeMode == ThemeMode.light ? ThemeMode.dark : ThemeMode.light;
    return themeMode.toString();
    // Load from wherever you want...
  }

  @override
  Future<bool> saveThemeMode(String value) async {
    // Save wherever you want...
    return true;
  }
}
