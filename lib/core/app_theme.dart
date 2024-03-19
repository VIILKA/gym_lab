import 'package:flutter/material.dart';

ThemeData basicTheme() {
  return ThemeData(
      fontFamily: 'Jost',
      textTheme: TextTheme(
        displayLarge: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w700,
        ),
        displayMedium: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w700,
        ),
        displaySmall: TextStyle(
          fontSize: 12,
        ),
      ));
}
