import 'package:flutter/material.dart';
import 'package:lightmode_darkmode/theme/theme.dart';

class ThemeProvider with ChangeNotifier {
  ThemeData _themeData = lightMode;

  ThemeData get themeData => _themeData;

  set themeData(ThemeData themeData) {
    _themeData = themeData;
    notifyListeners();
  }

  void toggleTheme() {
    if (_themeData == lightMode) {
      themeData = dartMode;
    } else {
      themeData = lightMode;
    }
  }
}
