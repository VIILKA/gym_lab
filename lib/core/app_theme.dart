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
          color: Colors.white,
          fontSize: 20,
          fontWeight: FontWeight.w700,
        ),
        displayMedium: TextStyle(
          color: Colors.white,
          fontSize: 14,
          fontWeight: FontWeight.w700,
        ),
        displaySmall: TextStyle(
          color: Colors.white,
          fontSize: 12,
          fontWeight: FontWeight.w700,
        ),
        titleSmall: TextStyle(
          color: Color.fromRGBO(255, 255, 255, 0.507),
          fontSize: 12,
          fontWeight: FontWeight.w400,
        ),
      ));
}
