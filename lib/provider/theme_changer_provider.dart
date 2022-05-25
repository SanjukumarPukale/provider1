import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ThemeChanger extends ChangeNotifier{
  var _themeMode = ThemeMode.light;

  ThemeMode get themeMode => _themeMode;

  void setTheme(ThemeMode themeMode){
    _themeMode = themeMode;
    notifyListeners();
  }
}