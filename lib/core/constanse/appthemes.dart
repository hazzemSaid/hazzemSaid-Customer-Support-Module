import 'package:flutter/material.dart';

class AppThemes {
  static const int primaryColor = 0xFFF4B5A4;
  static const int secondaryColor = 0xFFFAE8E2;
  static const int tertiaryColor = 0xFFFAD8D0;
  static const int backgroundColor = 0xFFFFF8F6;
  static const int textColor = 0xFF363130;
  static const int accentColor = 0xFFFAE8E2;
  static ThemeData appDarkTheme = ThemeData(
    brightness: Brightness.dark,
    primaryColor: Color(primaryColor),
    scaffoldBackgroundColor: Color(backgroundColor),
    fontFamily: 'Rubik',
    colorScheme: ColorScheme.dark(
      primary: Color(primaryColor),
      secondary: Color(secondaryColor),
      tertiary: Color(tertiaryColor),
      background: Color(backgroundColor),
      surface: Color(accentColor),
    ),
    textTheme: TextTheme(
      displayLarge: TextStyle(
        color: Color(textColor),
        fontSize: 32,
        fontWeight: FontWeight.bold,
      ),
      headlineMedium: TextStyle(
        color: Color(textColor),
        fontSize: 24,
        fontWeight: FontWeight.w600,
      ),
      bodyLarge: TextStyle(color: Color(textColor), fontSize: 18),
      bodyMedium: TextStyle(color: Color(textColor), fontSize: 16),
      labelLarge: TextStyle(color: Color(textColor)),
    ),
    appBarTheme: AppBarTheme(
      backgroundColor: Color(primaryColor),
      elevation: 0,
      iconTheme: IconThemeData(color: Color(textColor)),
      titleTextStyle: TextStyle(
        color: Color(textColor),
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
    ),
    iconTheme: IconThemeData(color: Color(secondaryColor)),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: Color(secondaryColor),
        foregroundColor: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      ),
    ),
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: Color(accentColor).withOpacity(0.1),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: BorderSide(color: Color(tertiaryColor)),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: BorderSide(color: Color(primaryColor), width: 2),
      ),
      labelStyle: TextStyle(color: Color(textColor)),
      hintStyle: TextStyle(color: Color(textColor).withOpacity(0.6)),
    ),
    useMaterial3: true,
  );
  static ThemeData appLightTheme = ThemeData(
    brightness: Brightness.light,
    fontFamily: 'Rubik',
    scaffoldBackgroundColor: Color(backgroundColor),
    primaryColor: Color(primaryColor),
    colorScheme: ColorScheme.light(
      primary: Color(primaryColor),
      secondary: Color(secondaryColor),
      background: Color(backgroundColor),
      surface: Color(tertiaryColor),
    ),
    textTheme: TextTheme(
      displayLarge: TextStyle(
        color: Color(textColor),
        fontSize: 32,
        fontWeight: FontWeight.bold,
      ),
      headlineMedium: TextStyle(
        color: Color(textColor),
        fontSize: 24,
        fontWeight: FontWeight.w600,
      ),
      bodyLarge: TextStyle(color: Color(textColor), fontSize: 18),
      bodyMedium: TextStyle(color: Color(textColor), fontSize: 16),
      labelLarge: TextStyle(color: Color(textColor)),
    ),
    appBarTheme: AppBarTheme(
      backgroundColor: Color(backgroundColor),
      elevation: 0,
      iconTheme: IconThemeData(color: Color(primaryColor)),
      titleTextStyle: TextStyle(
        color: Color(primaryColor),
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
    ),
    iconTheme: IconThemeData(color: Color(primaryColor)),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: Color(primaryColor),
        foregroundColor: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      ),
    ),
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: Color(tertiaryColor).withOpacity(0.1),
      contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: BorderSide(color: Color(tertiaryColor)),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: BorderSide(color: Color(primaryColor), width: 2),
      ),
      hintStyle: TextStyle(color: Color(textColor).withOpacity(0.5)),
    ),
    useMaterial3: true,
  );
}
