import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ApplicationTheme {
  static ThemeData lightTheme = ThemeData(
    primaryColor: const Color(0xFFB7935F),
    scaffoldBackgroundColor: Colors.transparent,
    appBarTheme: AppBarTheme(
      iconTheme: IconThemeData(
        color: Colors.black,
      ),
      elevation: 0,
      backgroundColor: Colors.transparent,
      centerTitle: true,
      titleTextStyle: GoogleFonts.elMessiri(
        fontSize: 30,
        fontWeight: FontWeight.bold,
        color: Colors.black,
      ),
    ),
    textTheme: TextTheme(
      titleLarge: GoogleFonts.elMessiri(
        fontSize: 30,
        fontWeight: FontWeight.bold,
        color: Colors.black,
      ),
      bodyMedium: GoogleFonts.elMessiri(
        fontSize: 25,
        fontWeight: FontWeight.w500,
        color: Colors.black,
      ),
      bodySmall: GoogleFonts.cinzelDecorative(
        fontSize: 20,
        fontWeight: FontWeight.normal,
        color: Colors.black,
      ),
    ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      type: BottomNavigationBarType.fixed,
      backgroundColor: Color(0xffB7935F),
      selectedIconTheme: IconThemeData(color: Colors.black, size: 32),
      selectedItemColor: Colors.black,
      unselectedIconTheme: IconThemeData(
        color: Colors.white,
        size: 28,
      ),
      unselectedItemColor: Colors.white,
    ),
  );
  static ThemeData darkTheme = ThemeData(
    scaffoldBackgroundColor: Colors.transparent,
    appBarTheme: AppBarTheme(
      elevation: 0,
      backgroundColor: Colors.transparent,
      centerTitle: true,
      titleTextStyle: GoogleFonts.elMessiri(
        fontSize: 30,
        fontWeight: FontWeight.bold,
        color: Colors.black,
      ),
    ),
  );
}
