import 'package:flutter/material.dart';

class AppTheme {
  static const primaryColor = Colors.indigo;

  static ThemeData lightTheme = ThemeData.light().copyWith(
    // Primary Color
    primaryColor: primaryColor,

    // AppBar Theme
    appBarTheme: const AppBarTheme(
      color: primaryColor,
      elevation: 0
    ),

    // TextButtons
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(primary: primaryColor)
    ),
  );

  static ThemeData darkTheme = ThemeData.dark().copyWith(
    // Primary Color
    primaryColor: Colors.yellow,

    // AppBar Theme
    appBarTheme: const AppBarTheme(
      color: Colors.yellow,
      elevation: 0
    ),

    scaffoldBackgroundColor: Colors.black
  );
}
