import 'package:flutter/material.dart';

ThemeData theme() {
  return ThemeData(
    scaffoldBackgroundColor: Colors.white,
    fontFamily: 'Anonymous Pro',
    textTheme: textTheme(),
  );
}

TextTheme textTheme() {
  return TextTheme(
    headline1: TextStyle(
      fontFamily: 'Anonymous Pro',
      color: Color(0xFF000000),
      fontSize: 32,
      fontWeight: FontWeight.bold,
    ),
    headline2: TextStyle(
      fontFamily: 'Anonymous Pro',
      color: Color(0xFF000000),
      fontSize: 24,
      fontWeight: FontWeight.bold,
    ),
    headline3: TextStyle(
      fontFamily: 'Anonymous Pro',
      color: Color(0xFF000000),
      fontSize: 18,
      fontWeight: FontWeight.bold,
    ),
    headline4: TextStyle(
      fontFamily: 'Anonymous Pro',
      color: Color(0xFF000000),
      fontSize: 16,
      fontWeight: FontWeight.bold,
    ),
    headline5: TextStyle(
      fontFamily: 'Anonymous Pro',
      color: Color(0xFF000000),
      fontSize: 14,
      fontWeight: FontWeight.bold,
    ),
    bodyText1: TextStyle(
      fontFamily: 'Anonymous Pro',
      color: Color(0xFF000000),
      fontSize: 12,
      fontWeight: FontWeight.normal,
    ),
    bodyText2: TextStyle(
      fontFamily: 'Anonymous Pro',
      color: Color(0xFF000000),
      fontSize: 10,
      fontWeight: FontWeight.normal,
    ),
  );
}
