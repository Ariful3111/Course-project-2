import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData AppTheme() {
  return ThemeData(
    //brightness: Brightness.light,
    primaryColor: const Color(0x62BB46),
    scaffoldBackgroundColor: Colors.white,
    backgroundColor: Colors.white,
    elevatedButtonTheme: const ElevatedButtonThemeData(
      style: ButtonStyle(
        backgroundColor: MaterialStatePropertyAll<Color>(
          Color(0xFF61BA46),
        ),
      ),
    ),
    buttonTheme: ButtonThemeData(
      buttonColor: Color(0xFF61BA46),
    ),

    buttonColor: const Color(0xFF61BA46),
    accentColor: const Color(0xFF61BA46),
    colorScheme: const ColorScheme(
        brightness: Brightness.light,
        primary: Color(0xFF61BA46),
        onPrimary: Color(0xFF61BA46),
        secondary: Color(0x051F0E),
        onSecondary: Color(0x0041C4),
        error: Colors.red,
        onError: Colors.red,
        background: Colors.white,
        onBackground: Color(0x0041C4),
        surface: Colors.white,
        onSurface: Colors.black),
    textTheme: const TextTheme(
      headline1: TextStyle(
        fontFamily: 'Gelion',
        color: Colors.white,
        fontStyle: FontStyle.normal,
        fontWeight: FontWeight.w600,
        fontSize: 27,
      ),
      headline2: TextStyle(
        fontFamily: 'Circular Std',
        color: Colors.white,
        fontWeight: FontWeight.w700,
        fontStyle: FontStyle.normal,
        fontSize: 17,
      ),
      headline3: TextStyle(
        fontFamily: 'Gelion',
        color: Colors.black,
        fontStyle: FontStyle.normal,
        fontWeight: FontWeight.w600,
        fontSize: 27,
      ),
      headline4: TextStyle(
        fontFamily: 'Circular Std',
        color: Colors.black,
        fontWeight: FontWeight.w700,
        fontStyle: FontStyle.normal,
        fontSize: 17,
      ),
      headline5: TextStyle(
        fontFamily: 'Circular Std',
        color: Colors.grey,
        fontWeight: FontWeight.w400,
        fontStyle: FontStyle.normal,
        fontSize: 16,
      ),
      headline6: TextStyle(
        fontFamily: 'Circular Std',
        color: Colors.black,
        fontWeight: FontWeight.w400,
        fontStyle: FontStyle.normal,
        fontSize: 16,
      ),

      bodyText1: TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.normal,
        fontSize: 30,
      ),
      bodyText2: TextStyle(
        color: Colors.black,
        fontWeight: FontWeight.normal,
        fontSize: 30,
      ),
    ),
  );
}
