import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// Define the color palette
class AppColors {
  static const Color background = Color(0xFFE9E6DF); // Light beige
  static const Color primary = Color(0xFF0B074C); // Dark blue
  static const Color secondary = Color(0xFF6C6D90); // Muted purple
  static const Color accent = Color(0xFF721212); // Dark red
  static const Color error = Color(0xFFB30305); // Bright red
  static const Color success = Color(0xFF4CAF50); // Green (added for success states)
  static const Color warning = Color(0xFFFFC107); // Amber (added for warnings)
  static const Color textPrimary = Color(0xFF000000); // Black
  static const Color textSecondary = Color(0xFF6C6D90); // Muted purple
  static const Color textDisabled = Color(0xFF9E9E9E); // Grey
}

// Define the app theme
final ThemeData earlyBirdTheme = ThemeData(
  // Brightness
  brightness: Brightness.light,

  // Color Scheme
  colorScheme: ColorScheme.light(
    primary: AppColors.primary,
    secondary: AppColors.secondary,
    background: AppColors.background,
    surface: Colors.white,
    error: AppColors.error,
    onPrimary: Colors.white,
    onSecondary: Colors.white,
    onBackground: AppColors.textPrimary,
    onSurface: AppColors.textPrimary,
    onError: Colors.white,
  ),

  // Scaffold Background Color
  scaffoldBackgroundColor: AppColors.background,

  // AppBar Theme
  appBarTheme: AppBarTheme(
    color: AppColors.primary,
    elevation: 0,
    titleTextStyle: GoogleFonts.poppins(
      fontSize: 20,
      fontWeight: FontWeight.bold,
      color: Colors.white,
    ),
    iconTheme: const IconThemeData(color: Colors.white),
  ),

  // Text Theme
  textTheme: TextTheme(
    headlineLarge: GoogleFonts.poppins(
      fontSize: 32,
      fontWeight: FontWeight.bold,
      color: AppColors.primary,
    ),
    headlineMedium: GoogleFonts.poppins(
      fontSize: 24,
      fontWeight: FontWeight.bold,
      color: AppColors.primary,
    ),
    headlineSmall: GoogleFonts.poppins(
      fontSize: 18,
      fontWeight: FontWeight.bold,
      color: AppColors.primary,
    ),
    bodyLarge: GoogleFonts.poppins(
      fontSize: 16,
      fontWeight: FontWeight.normal,
      color: AppColors.textPrimary,
    ),
    bodyMedium: GoogleFonts.poppins(
      fontSize: 14,
      fontWeight: FontWeight.normal,
      color: AppColors.textPrimary,
    ),
    bodySmall: GoogleFonts.poppins(
      fontSize: 12,
      fontWeight: FontWeight.normal,
      color: AppColors.textDisabled,
    ),
  ),

  // Button Themes
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: AppColors.primary,
      foregroundColor: Colors.white,
      textStyle: GoogleFonts.poppins(
        fontSize: 16,
        fontWeight: FontWeight.bold,
      ),
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
    ),
  ),
  textButtonTheme: TextButtonThemeData(
    style: TextButton.styleFrom(
      foregroundColor: AppColors.primary,
      textStyle: GoogleFonts.poppins(
        fontSize: 16,
        fontWeight: FontWeight.bold,
      ),
    ),
  ),
  outlinedButtonTheme: OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      foregroundColor: AppColors.primary,
      side: const BorderSide(color: AppColors.primary),
      textStyle: GoogleFonts.poppins(
        fontSize: 16,
        fontWeight: FontWeight.bold,
      ),
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
    ),
  ),

  // Input Decoration Theme (for TextFields)
  inputDecorationTheme: InputDecorationTheme(
    filled: true,
    fillColor: Colors.white,
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: const BorderSide(color: AppColors.textDisabled),
    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: const BorderSide(color: AppColors.textDisabled),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: const BorderSide(color: AppColors.primary),
    ),
    labelStyle: GoogleFonts.poppins(
      color: AppColors.textSecondary,
    ),
    hintStyle: GoogleFonts.poppins(
      color: AppColors.textDisabled,
    ),
    errorStyle: GoogleFonts.poppins(
      color: AppColors.error,
      fontSize: 12,
    ),
    errorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: const BorderSide(color: AppColors.error),
    ),
    focusedErrorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: const BorderSide(color: AppColors.error),
    ),
  ),

  // SnackBar Theme
  snackBarTheme: SnackBarThemeData(
    backgroundColor: AppColors.primary,
    contentTextStyle: GoogleFonts.poppins(
      color: Colors.white,
      fontSize: 14,
    ),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(8),
    ),
    behavior: SnackBarBehavior.floating,
  ),

  // Chip Theme
  chipTheme: ChipThemeData(
    backgroundColor: AppColors.secondary.withOpacity(0.2),
    labelStyle: GoogleFonts.poppins(
      color: AppColors.primary,
      fontSize: 14,
    ),
    selectedColor: AppColors.primary,
    secondarySelectedColor: AppColors.primary,
    padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(8),
    ),
  ),

  // Divider Theme
  dividerTheme: DividerThemeData(
    color: AppColors.textDisabled.withOpacity(0.5),
    thickness: 1,
    space: 1,
  ),

  // Progress Indicator Theme
  progressIndicatorTheme: ProgressIndicatorThemeData(
    color: AppColors.primary,
    linearTrackColor: AppColors.textDisabled.withOpacity(0.2),
  ),
);