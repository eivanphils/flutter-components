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

    // FloatingAction
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: primaryColor,
      elevation: 5
    ),

    // ElevatedButton

    elevatedButtonTheme:ElevatedButtonThemeData(
      style:  ElevatedButton.styleFrom(
        primary: primaryColor,
        shape: const StadiumBorder(),
        elevation: 0
      )
    ),

    // Inputs
    inputDecorationTheme: const InputDecorationTheme(
      floatingLabelStyle: TextStyle(color: primaryColor),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: primaryColor),
        borderRadius: BorderRadius.all(Radius.circular(20))
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: primaryColor),
        borderRadius: BorderRadius.all(Radius.circular(20))
      ),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(20))
      ),
    )
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
