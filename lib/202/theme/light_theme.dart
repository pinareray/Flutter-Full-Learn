import 'package:flutter/material.dart';

class LighTheme {
  final _lightColor = _LightColor();
  late ThemeData theme;

  LighTheme(){
    theme =  ThemeData(
    appBarTheme: AppBarTheme(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(bottom: Radius.circular(50)),
      ),
    ),
    scaffoldBackgroundColor: Colors.amberAccent,
    floatingActionButtonTheme: const FloatingActionButtonThemeData(backgroundColor: Colors.green),
    buttonTheme: ButtonThemeData(
      colorScheme: ColorScheme.light(onPrimary: Colors.purple, onSecondary: _lightColor.fiveStar)),
    checkboxTheme: CheckboxThemeData(
      fillColor: WidgetStateProperty.all(Colors.green),
      side: BorderSide(color: Colors.black),
    ),
    textTheme: ThemeData.light().textTheme.copyWith(titleMedium: TextStyle(fontSize: 20,color: _lightColor._textColor))
  );
  } 
}

class _LightColor{
  final Color _textColor = const Color.fromARGB(255, 27, 25, 25);
  final Color fiveStar = const Color.fromRGBO(255, 171, 75, 1);
  final Color sagarPurple = const Color.fromRGBO(106, 49, 211,1);
}