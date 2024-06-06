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
      color: Color(0x150D0AFF),
      fontSize: 32,
      fontWeight: FontWeight.bold,
    ),
    headline2: TextStyle(
      color: Color(0x150D0AFF),
      fontSize: 24,
      fontWeight: FontWeight.bold,
    ),
    headline3: TextStyle(
      color: Color(0x150D0AFF),
      fontSize: 18,
      fontWeight: FontWeight.bold,
    ),
    headline4: TextStyle(
      color: Color(0x150D0AFF),
      fontSize: 16,
      fontWeight: FontWeight.bold,
    ),
    headline5: TextStyle(
      color: Color(0x150D0AFF),
      fontSize: 14,
      fontWeight: FontWeight.bold,
    ),
    bodyText1: TextStyle(
      color: Color(0x150D0AFF),
      fontSize: 12,
      fontWeight: FontWeight.normal,
    ),
    bodyText2: TextStyle(
      color: Color(0x150D0AFF),
      fontSize: 10,
      fontWeight: FontWeight.normal,
    ),
  );
}
