import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ApplicationTheme {
  static bool isDark = false;
  static ThemeData lightTheme = ThemeData(
    primaryColor: const Color(0xFFB7935F),
    colorScheme: ColorScheme.fromSeed(
      seedColor: const Color(0xFFB7935F),
      onPrimary: const Color(0xffF8F8F8),
      onSecondary: const Color(0xFFB7935F),
    ),
    scaffoldBackgroundColor: Colors.transparent,
    appBarTheme: AppBarTheme(
      iconTheme: const IconThemeData(
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
    primaryColor: const Color(0xff141A2E),
    colorScheme: ColorScheme.fromSeed(
      seedColor: const Color(0xff141A2E),
      onPrimary: const Color(0xff141A2E),
      onSecondary: const Color(0xffFACC1D),
    ),
    scaffoldBackgroundColor: Colors.transparent,
    appBarTheme: AppBarTheme(
      iconTheme: const IconThemeData(color: Colors.white),
      elevation: 0,
      backgroundColor: Colors.transparent,
      centerTitle: true,
      titleTextStyle: GoogleFonts.elMessiri(
        fontSize: 30,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
    ),
    textTheme: TextTheme(
      titleLarge: GoogleFonts.elMessiri(
        fontSize: 30,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
      bodyMedium: GoogleFonts.elMessiri(
        fontSize: 25,
        fontWeight: FontWeight.w500,
        color: const Color(0xffFACC1D),
      ),
      bodySmall: GoogleFonts.cinzelDecorative(
        fontSize: 20,
        fontWeight: FontWeight.normal,
        color: const Color(0xffFACC1D),
      ),
    ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      type: BottomNavigationBarType.fixed,
      backgroundColor: Color(0xff141A2E),
      selectedIconTheme: IconThemeData(
        color: Color(0xffFACC1D),
        size: 32,
      ),
      selectedItemColor: Color(0xffFACC1D),
      unselectedIconTheme: IconThemeData(
        color: Colors.white,
        size: 28,
      ),
      unselectedItemColor: Colors.white,
    ),
    dividerColor: const Color(0xffFACC1D),
  );
}
