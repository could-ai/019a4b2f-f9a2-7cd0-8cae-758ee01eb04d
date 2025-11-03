import 'package:couldai_user_app/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  static final ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    primaryColor: AppColors.primary,
    scaffoldBackgroundColor: Colors.transparent,
    colorScheme: const ColorScheme.dark(
      primary: AppColors.primary,
      secondary: AppColors.secondary,
      error: AppColors.accent,
      surface: Color(0x1AFFFFFF), // White with 10% opacity
    ),
    textTheme: GoogleFonts.cairoTextTheme(ThemeData.dark().textTheme),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.accent,
        foregroundColor: Colors.white,
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 20),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        textStyle: GoogleFonts.cairo(
          fontWeight: FontWeight.w500,
          fontSize: 16,
        ),
      ),
    ),
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: const Color(0xE6FFFFFF), // White with 90% opacity
      contentPadding: const EdgeInsets.symmetric(vertical: 12, horizontal: 15),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: BorderSide.none,
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: const BorderSide(color: Color(0x80FFFFFF), width: 2), // White with 50% opacity
      ),
      hintStyle: const TextStyle(color: AppColors.gray),
    ),
    tabBarTheme: TabBarTheme(
      indicator: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: const Color(0x33FFFFFF), // White with 20% opacity
      ),
      labelColor: Colors.white,
      unselectedLabelColor: Colors.white.withOpacity(0.8),
      labelStyle: GoogleFonts.cairo(fontWeight: FontWeight.bold),
      unselectedLabelStyle: GoogleFonts.cairo(),
    ),
  );
}
