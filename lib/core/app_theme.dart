import 'package:flutter/material.dart';

ThemeData basicTheme() {
  return ThemeData(
      fontFamily: 'Jost',
      textTheme: TextTheme(
        displayLarge: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
        displayMedium: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.bold,
        ),
        displaySmall: TextStyle(
          fontSize: 12,
        ),
      ));
}
