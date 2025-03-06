import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

final ThemeData EarlyBirdTheme = ThemeData(
  // Brightness
  brightness: Brightness.light,

  // Primary Color
  primaryColor: Colors.blue.shade800,
  primarySwatch: Colors.blue,

  // Accent Color
  colorScheme: ColorScheme.light(
    secondary: Colors.orange.shade400, // Accent color
  ),

  // Scaffold Background Color
  scaffoldBackgroundColor: Colors.grey.shade100,

  // AppBar Theme
  appBarTheme: AppBarTheme(
    color: Colors.blue.shade800,
    elevation: 0,
    titleTextStyle: GoogleFonts.poppins(
      fontSize: 20,
      fontWeight: FontWeight.bold,
      color: Colors.white,
    ),
    iconTheme: IconThemeData(color: Colors.white),
  ),

  // Text Theme
  textTheme: TextTheme(
    headlineLarge: GoogleFonts.poppins(
      fontSize: 32,
      fontWeight: FontWeight.bold,
      color: Colors.blue.shade800,
    ),
    headlineMedium: GoogleFonts.poppins(
      fontSize: 24,
      fontWeight: FontWeight.bold,
      color: Colors.blue.shade800,
    ),
    headlineSmall: GoogleFonts.poppins(
      fontSize: 18,
      fontWeight: FontWeight.bold,
      color: Colors.blue.shade800,
    ),
    bodyLarge: GoogleFonts.poppins(
      fontSize: 16,
      fontWeight: FontWeight.normal,
      color: Colors.black87,
    ),
    bodyMedium: GoogleFonts.poppins(
      fontSize: 14,
      fontWeight: FontWeight.normal,
      color: Colors.black87,
    ),
    bodySmall: GoogleFonts.poppins(
      fontSize: 12,
      fontWeight: FontWeight.normal,
      color: Colors.black54,
    ),
  ),

  // Button Theme
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: Colors.blue.shade800,
      foregroundColor: Colors.white,
      textStyle: GoogleFonts.poppins(fontSize: 16, fontWeight: FontWeight.bold),
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
    ),
  ),

  // Input Decoration Theme (for TextFields)
  inputDecorationTheme: InputDecorationTheme(
    filled: true,
    fillColor: Colors.white,
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: BorderSide(color: Colors.grey.shade300),
    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: BorderSide(color: Colors.grey.shade300),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: BorderSide(color: Colors.blue.shade800),
    ),
    labelStyle: GoogleFonts.poppins(color: Colors.blue.shade800),
    hintStyle: GoogleFonts.poppins(color: Colors.grey.shade500),
  ),
);
