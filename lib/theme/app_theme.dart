import 'package:flutter/material.dart';

class AppTheme {
  static const primary = Color.fromRGBO(38, 208, 124, 1);
  static const primary2 = Color.fromRGBO(26, 145, 86, 1);
  static const secondary = Color.fromRGBO(0, 43, 73, 1);
  static const secondary2 = Color.fromRGBO(0, 88, 150, 1);
  static const text = Color.fromRGBO(49, 51, 53, 1);
  static const textDisabled = Color.fromRGBO(213, 213, 213, 1);
  static const buttonDisabled = Color.fromRGBO(183, 183, 183, 1);

  static ThemeData lightTheme = ThemeData.light().copyWith(
    // Primary Color
    primaryColor: primary,

    // AppBar Theme
    appBarTheme: const AppBarTheme(
      color: primary,
      elevation: 0
    ),

    // TextButtons
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(primary: primary)
    ),

    // FloatingAction
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: primary,
      elevation: 5
    ),

    // ElevatedButton

    elevatedButtonTheme:ElevatedButtonThemeData(
      style:  ElevatedButton.styleFrom(
        primary: primary,
        shape: const StadiumBorder(),
        elevation: 0
      )
    ),

    // Inputs
    inputDecorationTheme: const InputDecorationTheme(
      floatingLabelStyle: TextStyle(color: primary),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: primary),
        borderRadius: BorderRadius.all(Radius.circular(20))
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: primary),
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
