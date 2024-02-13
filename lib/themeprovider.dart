import 'package:flutter/material.dart';

class ThemeProvider with ChangeNotifier {
  bool _isDarkMode = false;

  bool get isDarkMode => _isDarkMode;

  ThemeData get themeData =>
      _isDarkMode ? _darkTheme : _lightTheme;

  void toggleTheme() {
    _isDarkMode = !_isDarkMode;
    notifyListeners();
  }

  static final ThemeData _lightTheme = ThemeData(
    brightness: Brightness.light,
    // Add other light mode specific configurations
  );

  static final ThemeData _darkTheme = ThemeData(
    brightness: Brightness.dark,
    // Add other dark mode specific configurations
  );
}
