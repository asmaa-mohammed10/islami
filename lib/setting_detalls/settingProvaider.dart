import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SettingProvaider with ChangeNotifier{
  ThemeMode themeMode = ThemeMode.light;
  String language ="ar";

  void changrTheme(ThemeMode selectedThemeMode) async{
    themeMode =selectedThemeMode;
    notifyListeners();
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString("mode", themeMode==ThemeMode.light?"light":"dark");


  }
  void changrLanguge(String lang) async{
    language=lang;
    notifyListeners();
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString("language", language);

  }
}
