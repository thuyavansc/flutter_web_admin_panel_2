
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'app_themes.dart';

class ThemeNotifier extends ChangeNotifier {
  ThemeData _currentTheme = AppThemes.greenTheme;  // Default to blue theme

  ThemeData get currentTheme => _currentTheme;

  void switchTheme(ThemeData newTheme) {
    _currentTheme = newTheme;
    notifyListeners();
  }
}