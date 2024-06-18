import 'package:flutter/material.dart';

ThemeData theme() {
  return ThemeData(
    scaffoldBackgroundColor: Colors.white,
    fontFamily: 'Anonymous Pro',
    textTheme: textTheme(),
  );
}

TextTheme textTheme() {
  return const TextTheme(
    displayLarge:TextStyle(
      fontFamily: 'Anonymous Pro',
      color: Color(0xFF000000),
      fontSize: 32,
      fontWeight: FontWeight.bold,
    ),
    displayMedium: TextStyle(
      fontFamily: 'Anonymous Pro',
      color: Color(0xFF000000),
      fontSize: 24,
      fontWeight: FontWeight.bold,
    ),
    displaySmall: TextStyle(
      fontFamily: 'Anonymous Pro',
      color: Color(0xFF000000),
      fontSize: 18,
      fontWeight: FontWeight.bold,
    ),
    headlineMedium: TextStyle(
      fontFamily: 'Anonymous Pro',
      color: Color(0xFF000000),
      fontSize: 16,
      fontWeight: FontWeight.bold,
    ),
    headlineSmall: TextStyle(
      fontFamily: 'Anonymous Pro',
      color: Color(0xFF000000),
      fontSize: 14,
      fontWeight: FontWeight.bold,
    ),
    bodyLarge: TextStyle(
      fontFamily: 'Anonymous Pro',
      color: Color(0xFF000000),
      fontSize: 12,
      fontWeight: FontWeight.normal,
    ),
    bodyMedium: TextStyle(
      fontFamily: 'Anonymous Pro',
      color: Color(0xFF000000),
      fontSize: 10,
      fontWeight: FontWeight.normal,
    ),
  );
}
