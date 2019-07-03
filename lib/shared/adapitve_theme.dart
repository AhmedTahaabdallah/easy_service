import 'package:flutter/material.dart';



ThemeData getAdaptiveThemeData(context, bool isEnglish){
  

  final ThemeData _androidTheme = ThemeData(
    brightness: Brightness.light,
    primarySwatch: Colors.blue,
    accentColor: Colors.indigoAccent,
    //fontFamily: "oswald",
    buttonColor: Colors.indigoAccent,
    canvasColor: Colors.transparent,
    fontFamily: isEnglish ? 'oswald' : 'elmessiri'
);

final ThemeData _iOSTheme = ThemeData(
    brightness: Brightness.light,
    primarySwatch: Colors.deepOrange,
    accentColor: Colors.deepPurple,
    //fontFamily: "oswald",
    buttonColor: Colors.deepPurple,
    canvasColor: Colors.transparent,
    fontFamily: isEnglish ? 'oswald' : 'elmessiri'
);

  return Theme.of(context).platform == TargetPlatform.android ? _androidTheme : _iOSTheme;
}