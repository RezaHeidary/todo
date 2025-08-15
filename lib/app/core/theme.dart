import 'package:flutter/material.dart';

class Themes {
  static final lightTheme = ThemeData(
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.white,
      foregroundColor: Colors.black,
      elevation: .5,
    ),
    textTheme: const TextTheme(
      bodyMedium: TextStyle(color: Colors.black),
      bodySmall: TextStyle(color: Colors.black54),
      labelMedium:  TextStyle(color: Colors.black,fontSize: 18),
    ),
    primarySwatch: Colors.blue);
 

}