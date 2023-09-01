import 'package:flutter/material.dart';

class CatFactsAppTheme {
  static ThemeData get getThemeData => ThemeData(
        textTheme: _getTextTheme,
        textButtonTheme: _getTextButtonTheme,
      );

  static TextTheme get _getTextTheme => const TextTheme(
        bodyMedium: TextStyle(
          fontSize: 18,
        ),
        labelMedium: TextStyle(
          fontSize: 20,
          color: Colors.blueAccent,
        ),
      );

  static TextButtonThemeData get _getTextButtonTheme => TextButtonThemeData(
        style: ButtonStyle(
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              side: BorderSide(color: Colors.blueAccent),
              borderRadius: BorderRadius.circular(
                10,
              ),
            ),
          ),
        ),
      );
}
