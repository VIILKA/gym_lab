import 'package:flutter/material.dart';

ThemeData basicTheme() {
  return ThemeData(
      fontFamily: 'Jost',
      outlinedButtonTheme: OutlinedButtonThemeData(
          style: OutlinedButton.styleFrom(
        backgroundColor: Color.fromARGB(125, 0, 0, 0),
        side: BorderSide(
            width: 2.0, color: const Color.fromARGB(255, 255, 255, 255)),
      )),
      textTheme: TextTheme(
        displayLarge: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w700,
        ),
        displayMedium: TextStyle(
          color: Colors.white,
          fontSize: 14,
          fontWeight: FontWeight.w700,
        ),
        displaySmall: TextStyle(
          fontSize: 12,
        ),
      ));
}
